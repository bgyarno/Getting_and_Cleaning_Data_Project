# Getting_and_Cleaning_Data_Project

The scripts contained in the file 'Run_Analysis.R' import the raw data files from the UCI HAR Dataset and comine them for analysis.
The output of this series of scripts is the csv file "tidy_data2.csv".  This file contains the average of a set of selected measurements
        for each subject and activity combination.

The processing steps for 'Run_Analysis.R' are as follows:
1.  The individual .txt files are loaded in to r.  All variables for 'x_test.txt' and 'x_train.txt' are imported with a data 
        type of numeric
2.  The variable names of each file are revised to be descriptive of the variables they represent.  The variable names 
        provided in 'activity_labels.txt' are used as the column names for both the training and test x data
3.  A training dataset is created that includes the subject_id, the mean and standard deviation measures from the  x_training data, 
        the y_training data, the activity being performed, and a new variable identifying it as training data.  
        This is done by using the cbind operator on the appropriate datasets
    a.  An identical procedure to 3. is performed using the test datasets. 
    b.  The result is two separate files containing the training and test data
4.  These training and test datasets are combined using the rbind operator
5.  The 'activity' variable in this combied file is re-coded to show the descriptive names of the activities (Walking, etc.), 
        instead of numeric representations
6.  The variables names for the measurment data in the combined file are revised to be more descriptive and minimize abbreviations
    a.  all characters are set to lowercase
    b.  't' and 'f' characters at the beginning of the variable name are changed to 'time based' and 'frequency based'
    c.  'acc' and 'gyro' are changed to 'acceleration' and 'rotation'
    d.  leading underscores are added to 'body', 'gravity', 'jerk', and 'mag', to seperate the variable name components
    e.  '-mean()' and '-std()' are changed to 'mean' and 'stdev'
    f.  additional hyphens, and the duplication of 'body' in some variables are deleted
7.  The preceding steps result in the original 'tidy' dataset.  The assignment calls for a second tidy dateset, shown below
    a.  ddply package is used to group the data frame by subject and activiy and calcuate the mean of each variable.  The 'data_type' 
              variable describing if the data is training or test is excluded from this dataset
    b.  This final dataset is exported to csv as 'tidy_data2.csv'
