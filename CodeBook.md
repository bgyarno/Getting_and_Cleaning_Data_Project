## Code book for Getting and Cleaning Data Course Project

The variables in the final dataset 'tidy_data2.csv' are as follows:

1.  subject_id:  unique identifier for each subject in the study (range: 1-30)
2.  activity:  the activity being performed in each observation.  Activities are as follows:
        LAYING
        SITTING
        STANDING
        WALKING
        WALKING_DOWNSTAIRS
        WALKING_UPSTAIRS
3.  The remaining 65 variables are the specified measurements for each observation. The naming convention for the se variables is as follows
       a.  was the measure of the time or frequency domain (time_based, frequency_based)
       b.  did the measurement capture body movement or gravity (body, gravity)
       c.  did the measure use the accelerometer or the gyroscope (acceleration, rotation)
       d.  does the variable capture jerk signals (jerk)
       e.  does the variable calculate an estimate of the magnitude of the signals (magnitude)
       f.  does the variable capture the mean or standard deviation (mean, stdev)
       g.  is the variable in the x, y, or z dimension (x, y, z)
       
The full list of variables are provided below    
         
 [1] "subject_id"                                            
 [2] "activity"                                              
 [3] "time_based_body_acceleration_mean_x"                   
 [4] "time_based_body_acceleration_mean_y"                   
 [5] "time_based_body_acceleration_mean_z"                   
 [6] "time_based_body_acceleration_stdev_x"                  
 [7] "time_based_body_acceleration_stdev_y"                  
 [8] "time_based_body_acceleration_stdev_z"                  
 [9] "time_based_gravity_acceleration_mean_x"                
[10] "time_based_gravity_acceleration_mean_y"                
[11] "time_based_gravity_acceleration_mean_z"                
[12] "time_based_gravity_acceleration_stdev_x"               
[13] "time_based_gravity_acceleration_stdev_y"               
[14] "time_based_gravity_acceleration_stdev_z"               
[15] "time_based_body_acceleration_jerk_mean_x"              
[16] "time_based_body_acceleration_jerk_mean_y"              
[17] "time_based_body_acceleration_jerk_mean_z"              
[18] "time_based_body_acceleration_jerk_stdev_x"             
[19] "time_based_body_acceleration_jerk_stdev_y"             
[20] "time_based_body_acceleration_jerk_stdev_z"             
[21] "time_based_body_rotation_mean_x"                       
[22] "time_based_body_rotation_mean_y"                       
[23] "time_based_body_rotation_mean_z"                       
[24] "time_based_body_rotation_stdev_x"                      
[25] "time_based_body_rotation_stdev_y"                      
[26] "time_based_body_rotation_stdev_z"                      
[27] "time_based_body_rotation_jerk_mean_x"                  
[28] "time_based_body_rotation_jerk_mean_y"                  
[29] "time_based_body_rotation_jerk_mean_z"                  
[30] "time_based_body_rotation_jerk_stdev_x"                 
[31] "time_based_body_rotation_jerk_stdev_y"                 
[32] "time_based_body_rotation_jerk_stdev_z"                 
[33] "time_based_body_acceleration_magnitude_mean"           
[34] "time_based_body_acceleration_magnitude_stdev"          
[35] "time_based_gravity_acceleration_magnitude_mean"        
[36] "time_based_gravity_acceleration_magnitude_stdev"       
[37] "time_based_body_acceleration_jerk_magnitude_mean"      
[38] "time_based_body_acceleration_jerk_magnitude_stdev"     
[39] "time_based_body_rotation_magnitude_mean"               
[40] "time_based_body_rotation_magnitude_stdev"              
[41] "time_based_body_rotation_jerk_magnitude_mean"          
[42] "time_based_body_rotation_jerk_magnitude_stdev"         
[43] "frequency_based_body_acceleration_mean_x"              
[44] "frequency_based_body_acceleration_mean_y"              
[45] "frequency_based_body_acceleration_mean_z"              
[46] "frequency_based_body_acceleration_stdev_x"             
[47] "frequency_based_body_acceleration_stdev_y"             
[48] "frequency_based_body_acceleration_stdev_z"             
[49] "frequency_based_body_acceleration_jerk_mean_x"         
[50] "frequency_based_body_acceleration_jerk_mean_y"         
[51] "frequency_based_body_acceleration_jerk_mean_z"         
[52] "frequency_based_body_acceleration_jerk_stdev_x"        
[53] "frequency_based_body_acceleration_jerk_stdev_y"        
[54] "frequency_based_body_acceleration_jerk_stdev_z"        
[55] "frequency_based_body_rotation_mean_x"                  
[56] "frequency_based_body_rotation_mean_y"                  
[57] "frequency_based_body_rotation_mean_z"                  
[58] "frequency_based_body_rotation_stdev_x"                 
[59] "frequency_based_body_rotation_stdev_y"                 
[60] "frequency_based_body_rotation_stdev_z"                 
[61] "frequency_based_body_acceleration_magnitude_mean"      
[62] "frequency_based_body_acceleration_magnitude_stdev"     
[63] "frequency_based_body_acceleration_jerk_magnitude_mean" 
[64] "frequency_based_body_acceleration_jerk_magnitude_stdev"
[65] "frequency_based_body_rotation_magnitude_mean"          
[66] "frequency_based_body_rotation_magnitude_stdev"         
[67] "frequency_based_body_rotation_jerk_magnitude_mean"     
[68] "frequency_based_body_rotation_jerk_magnitude_stdev"   
       
