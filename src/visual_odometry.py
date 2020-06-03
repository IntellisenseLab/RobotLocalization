import numpy as np 
import cv2
from enum import Enum
from feature_tracker import FeatureTrackerTypes, FeatureTrackingResult
from parameters import Parameters

class ImageRecievedState(Enum):
    NO_IMAGES_YET   = 0    
    GOT_FIRST_IMAGE = 1
   
MinNumFeature = Parameters.MinNumFeatureDefault
RansacThresholdPixels = Parameters.RansacThresholdPixels
RansacProb = Parameters.RansacProb

class VisualOdometry(object):
    def __init__(self, cam, grountruth, feature_tracker):
        self.state = ImageRecievedState.NO_IMAGES_YET
        self.cam = cam
        self.cur_image = None   # current image
        self.prev_image = None  # previous/reference image

        self.kps_ref = None  # reference keypoints 
        self.des_ref = None # refeference descriptors 
        self.kps_cur = None  # current keypoints 
        self.des_cur = None # current descriptors 

        self.cur_R = np.eye(3,3) # current rotation 
        self.cur_t = np.zeros((3,1)) # current translation 
     
        self.feature_tracker = feature_tracker
        self.track_result = None 

        self.init_history = True 
        self.poses = []              # track list of poses
        self.trans_est = None           # track list of estimated translations      
        self.trans_gt = None            # track list of ground truth translations (if available)
        self.trans_est_ref = []         # track list of estimated translations centered w.r.t. first one
        self.trans_gt_ref = []          # track list of estimated ground truth translations centered w.r.t. first one     

        self.num_matched_kps = None    # current number of matched keypoints  
        self.num_inliers = None        # current number of inliers


    def computeFundamentalMatrix(self, kps_ref, kps_cur):
        F, mask = cv2.findFundamentalMat(kps_ref, kps_cur, cv2.FM_RANSAC, param1=RansacThresholdPixels, param2=RansacProb)
        if F is None or F.shape == (1, 1):
            # no fundamental matrix found
            raise Exception('No fundamental matrix found')
        elif F.shape[0] > 3:
            # more than one matrix found, pick the first
            F = F[0:3, 0:3]
        return np.matrix(F), mask 	

    def removeOutliers(self, mask): 
        if mask is not None:       
            mask_index = [ i for i,v in enumerate(mask) if v > 0]    
            self.kps_cur = self.kps_cur[mask_index]           
            self.kps_ref = self.kps_ref[mask_index]           
            if self.des_cur is not None: 
                self.des_cur = self.des_cur[mask_index]        
            if self.des_ref is not None: 
                self.des_ref = self.des_ref[mask_index]  
