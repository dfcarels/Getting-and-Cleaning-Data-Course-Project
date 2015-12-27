---
title: "CODE BOOK - Getting & Cleaning Data Project"
author: "dfcarels"
date: "December 2015"
output: html_document
---

#1. Introduction
This is the codebook for the **'tidydata.txt' dataset** (hereafter: 'dataset'). 

#2. Source / origin of the dataset
The source of this dataset are several datafiles obtained from the **"Human Activity Recognition Using Smartphones Data Set"** for which more information can be found here: [link](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).

The following **datafiles** have been used to create the 'tidydata.txt' dataset:

* `X_test.txt`: file with the test measurements.
* `y_test.txt`: file with the activity labels for the test measurements. 
* `features.txt`: list of all features in the test measurements file (i.e., the column headers for the measurements file: `X_test.txt`).
* `subject_test.txt`: file with the subjects for the test data.
* `X_train.txt`, `y_train.txt`, `subject_train.txt`: same as the previous files but for the training data. 

Other files have been used for **reference** purposes only:

* `features_info.txt`: shows information about the variables used on the feature vector.
* `acitivity_labels.txt`: links the class labels with their activity name.


#3. Format of the dataset & variables
The format of the `tidydata.txt` dataset is a data frame with **180 observations** on the following **81 variables** (ordered in identifiers and measurements):

##3.1 Identifiers
`activity`

This variable is a factor with **6 levels** and represents the **activities** each person (subject) performed wearing a smartphone (Samsung Galaxy S II) on the waist:

* `LAYING`
* `SITTING`
* `STANDING`
* `WALKING`
* `WALKING_DOWNSTAIRS`
* `WALKING_UPSTAIRS`


`subjects`

* This variable is a **numeric vector** for which each integer represents 1 particular **subject**. 
* The vector has values from **1 to 30**, as the experiment has been carried out with a group of 30 volunteers within an age bracket of 19-48 years. 

##3.2 Measurements
###Summary
* The dataset contains **79 measurements**, all **numeric vectors**.
* Only measurements with **'mean'** or **'std'** (standard deviation) have been retained from the original data files. 
* The values in the measurement columns are all **means**. 

*__Excerpt / example 1:__*

| Activity      | Subject       | t_MeanBodyAcceleration_X  |
| ------------- |:-------------:| :------------------------ |
| LAYING        | 1             | 0.2215982                 |

The value 0.2215982 is the mean of the measurement `t_MeanBodyAcceleration_X` for subject 1 for the activity `LAYING`.


*__Excerpt / example 2:__*

| Activity      | Subject       | t_StdBodyAcceleration_X  |
| ------------- |:-------------:| :----------------------- |
| SITTING       | 3             | -0.986822280             |

The value -0.986822280 is the mean of the measurement `t_StdBodyAcceleration_X` for subject 3 for the activity `SITTING`.

###List of measurements

* `t_MeanBodyAcceleration_X`
* `t_MeanBodyAcceleration_Y`
* `t_MeanBodyAcceleration_Z`
* `t_MeanGravityAcceleration_X`
* `t_MeanGravityAcceleration_Y`
* `t_MeanGravityAcceleration_Z`
* `t_MeanBodyAccelerationJerk_X`
* `t_MeanBodyAccelerationJerk_Y`
* `t_MeanBodyAccelerationJerk_Z`
* `t_MeanBodyAngularVelocity_X`
* `t_MeanBodyAngularVelocity_Y`
* `t_MeanBodyAngularVelocity_Z`
* `t_MeanBodyAngularVelocityJerk_X`
* `t_MeanBodyAngularVelocityJerk_Y`
* `t_MeanBodyAngularVelocityJerk_Z`
* `t_MeanBodyAccelerationMagnitude`
* `t_MeanGravityAccelerationMagnitude`
* `t_MeanBodyAccelerationJerkMagnitude`
* `t_MeanBodyAngularVelocityMagnitude`
* `t_MeanBodyAngularVelocityJerkMagnitude`
* `f_MeanBodyAcceleration_X`
* `f_MeanBodyAcceleration_Y`
* `f_MeanBodyAcceleration_Z`
* `f_MeanFreqBodyAcceleration_X`
* `f_MeanFreqBodyAcceleration_Y`
* `f_MeanFreqBodyAcceleration_Z`
* `f_MeanBodyAccelerationJerk_X`
* `f_MeanBodyAccelerationJerk_Y`
* `f_MeanBodyAccelerationJerk_Z`
* `f_MeanFreqBodyAccelerationJerk_X`
* `f_MeanFreqBodyAccelerationJerk_Y`
* `f_MeanFreqBodyAccelerationJerk_Z`
* `f_MeanBodyAngularVelocity_X`
* `f_MeanBodyAngularVelocity_Y`
* `f_MeanBodyAngularVelocity_Z`
* `f_MeanFreqBodyAngularVelocity_X`
* `f_MeanFreqBodyAngularVelocity_Y`
* `f_MeanFreqBodyAngularVelocity_Z`
* `f_MeanBodyAccelerationMagnitude`
* `f_MeanFreqBodyAccelerationMagnitude`
* `f_MeanBodyAccelerationJerkMagnitude`
* `f_MeanFreqBodyAccelerationJerkMagnitude`
* `f_MeanBodyAngularVelocityMagnitude`
* `f_MeanFreqBodyAngularVelocityMagnitude`
* `f_MeanBodyAngularVelocityJerkMagnitude`
* `f_MeanFreqBodyAngularVelocityJerkMagnitude`
* `t_StdBodyAcceleration_X`
* `t_StdBodyAcceleration_Y`
* `t_StdBodyAcceleration_Z`
* `t_StdGravityAcceleration_X`
* `t_StdGravityAcceleration_Y`
* `t_StdGravityAcceleration_Z`
* `t_StdBodyAccelerationJerk_X`
* `t_StdBodyAccelerationJerk_Y`
* `t_StdBodyAccelerationJerk_Z`
* `t_StdBodyAngularVelocity_X`
* `t_StdBodyAngularVelocity_Y`
* `t_StdBodyAngularVelocity_Z`
* `t_StdBodyAngularVelocityJerk_X`
* `t_StdBodyAngularVelocityJerk_Y`
* `t_StdBodyAngularVelocityJerk_Z`
* `t_StdBodyAccelerationMagnitude`
* `t_StdGravityAccelerationMagnitude`
* `t_StdBodyAccelerationJerkMagnitude`
* `t_StdBodyAngularVelocityMagnitude`
* `t_StdBodyAngularVelocityJerkMagnitude`
* `f_StdBodyAcceleration_X`
* `f_StdBodyAcceleration_Y`
* `f_StdBodyAcceleration_Z`
* `f_StdBodyAccelerationJerk_X`
* `f_StdBodyAccelerationJerk_Y`
* `f_StdBodyAccelerationJerk_Z`
* `f_StdBodyAngularVelocity_X`
* `f_StdBodyAngularVelocity_Y`
* `f_StdBodyAngularVelocity_Z`
* `f_StdBodyAccelerationMagnitude`
* `f_StdBodyAccelerationJerkMagnitude`
* `f_StdBodyAngularVelocityMagnitude`
* `f_StdBodyAngularVelocityJerkMagnitude`


###How to read the measurements 
The **measurement names** (column headers) have been named in a particular way so you can interpret it more easily as compared to the column headers in the original data files. Each measurement name (column header) contains one or several of the following **elements:**

* Prefix `t_` denotes time domain signals that were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise.
* Prefix `f_` denotes frequency domain signals for which a Fast Fourier Transform (FFT) was applied to calculate them. 
* `Mean` denotes the mean; `Std` denotes a standard deviation.
* `Acceleration`: acceleration signals were separated into `Body` and `Gravity` acceleration signals using a low pass Butterworth filter with a corner frequency of 0.3 Hz.
* `Angular Velocity`: the gyroscope was used to capture the angular velocity at a constant rate of 50Hz.
* `Jerk`: the body linear acceleration and angular velocity were derived in time to obtain Jerk signals.
* `Magnitude` denotes the magnitude of the three-dimensional signals that was calculated using the Euclidean norm.
* Suffix `_X`, `_Y` or `_Z` denotes 3-axial signals in the X, Y or Z directions.

NOTE: the measurement names have been adapted from the original datafiles *(see further on in section 5)*.


#5. Raw data transformation script (run_analysis.R)
The script `run_analysis.R` contains the following **steps** performed on the data to in the end create the `tidydata.txt` dataset:

0. download files and put them into the working directory. 
1. load libraries: `data.table`, `reshape2`, `dplyr` and `plyr`.
1. read in the column headers for the measurements from the 'features.txt' file.
1. read in the 'X' files (i.e., measurements) from the test and training data and add the column headers from the 'features.txt' file created in the previous step. 
1. read in 'y' files from the test and training data and add 'activity' as column header.
1. read in the 'subject' files from the test and training data and add 'subject' as column header.
1. column bind (`cbind`) all 'test' files into 1 data table.
1. column bind (`cbind`) all 'training' files into 1 data table.
1. merge the 'test' and 'training' data tables into 1 new data table. 
1. extract the measurements columns with 'mean' and 'std' (standard deviation) in their header name and bind these to the `subject` and `activity` columns.
1. replace the `activity` integers by their descriptive variable names (found in the `activity_labels.txt` file) using a for loop.
1. rename the following column headers with a more descriptive variable name:
  * `tBodyAcc.mean...X` -> `t_MeanBodyAcceleration_X`
  * `tBodyAcc.mean...Y` -> `t_MeanBodyAcceleration_Y`
  * `tBodyAcc.mean...Z` -> `t_MeanBodyAcceleration_Z`
  * `tGravityAcc.mean...X` -> `t_MeanGravityAcceleration_X`
  * `tGravityAcc.mean...Y` -> `t_MeanGravityAcceleration_Y`
  * `tGravityAcc.mean...Z` -> `t_MeanGravityAcceleration_Z`
  * `tBodyAccJerk.mean...X` -> `t_MeanBodyAccelerationJerk_X`
  * `tBodyAccJerk.mean...Y` -> `t_MeanBodyAccelerationJerk_Y`
  * `tBodyAccJerk.mean...Z` -> `t_MeanBodyAccelerationJerk_Z`
  * `tBodyGyro.mean...X` -> `t_MeanBodyAngularVelocity_X`
  * `tBodyGyro.mean...Y` -> `t_MeanBodyAngularVelocity_Y`
  * `tBodyGyro.mean...Z` -> `t_MeanBodyAngularVelocity_Z`
  * `tBodyGyroJerk.mean...X` -> `t_MeanBodyAngularVelocityJerk_X`
  * `tBodyGyroJerk.mean...Y` -> `t_MeanBodyAngularVelocityJerk_Y`
  * `tBodyGyroJerk.mean...Z` -> `t_MeanBodyAngularVelocityJerk_Z`
  * `tBodyAccMag.mean..` -> `t_MeanBodyAccelerationMagnitude`
  * `tGravityAccMag.mean..` -> `t_MeanGravityAccelerationMagnitude`
  * `tBodyAccJerkMag.mean..` -> `t_MeanBodyAccelerationJerkMagnitude`
  * `tBodyGyroMag.mean..` -> `t_MeanBodyAngularVelocityMagnitude`
  * `tBodyGyroJerkMag.mean..` -> `t_MeanBodyAngularVelocityJerkMagnitude`
  * `fBodyAcc.mean...X` -> `f_MeanBodyAcceleration_X`
  * `fBodyAcc.mean...Y` -> `f_MeanBodyAcceleration_Y`
  * `fBodyAcc.mean...Z` -> `f_MeanBodyAcceleration_Z`
  * `fBodyAcc.meanFreq...X` -> `f_MeanFreqBodyAcceleration_X`
  * `fBodyAcc.meanFreq...Y` -> `f_MeanFreqBodyAcceleration_Y`
  * `fBodyAcc.meanFreq...Z` -> `f_MeanFreqBodyAcceleration_Z`
  * `fBodyAccJerk.mean...X` -> `f_MeanBodyAccelerationJerk_X`
  * `fBodyAccJerk.mean...Y` -> `f_MeanBodyAccelerationJerk_Y`
  * `fBodyAccJerk.mean...Z` -> `f_MeanBodyAccelerationJerk_Z`
  * `fBodyAccJerk.meanFreq...X` -> `f_MeanFreqBodyAccelerationJerk_X`
  * `fBodyAccJerk.meanFreq...Y` -> `f_MeanFreqBodyAccelerationJerk_Y`
  * `fBodyAccJerk.meanFreq...Z` -> `f_MeanFreqBodyAccelerationJerk_Z`
  * `fBodyGyro.mean...X` -> `f_MeanBodyAngularVelocity_X`
  * `fBodyGyro.mean...Y` -> `f_MeanBodyAngularVelocity_Y`
  * `fBodyGyro.mean...Z` -> `f_MeanBodyAngularVelocity_Z`
  * `fBodyGyro.meanFreq...X` -> `f_MeanFreqBodyAngularVelocity_X`
  * `fBodyGyro.meanFreq...Y` -> `f_MeanFreqBodyAngularVelocity_Y`
  * `fBodyGyro.meanFreq...Z` -> `f_MeanFreqBodyAngularVelocity_Z`
  * `fBodyAccMag.mean..` -> `f_MeanBodyAccelerationMagnitude`
  * `fBodyAccMag.meanFreq..` -> `f_MeanFreqBodyAccelerationMagnitude`
  * `fBodyBodyAccJerkMag.mean..` -> `f_MeanBodyAccelerationJerkMagnitude`
  * `fBodyBodyAccJerkMag.meanFreq..` -> `f_MeanFreqBodyAccelerationJerkMagnitude`
  * `fBodyBodyGyroMag.mean..` -> `f_MeanBodyAngularVelocityMagnitude`
  * `fBodyBodyGyroMag.meanFreq..` -> `f_MeanFreqBodyAngularVelocityMagnitude`
  * `fBodyBodyGyroJerkMag.mean..` -> `f_MeanBodyAngularVelocityJerkMagnitude`
  * `fBodyBodyGyroJerkMag.meanFreq..` -> `f_MeanFreqBodyAngularVelocityJerkMagnitude`
  * `tBodyAcc.std...X` -> `t_StdBodyAcceleration_X`
  * `tBodyAcc.std...Y` -> `t_StdBodyAcceleration_Y`
  * `tBodyAcc.std...Z` -> `t_StdBodyAcceleration_Z`
  * `tGravityAcc.std...X` -> `t_StdGravityAcceleration_X`
  * `tGravityAcc.std...Y` -> `t_StdGravityAcceleration_Y`
  * `tGravityAcc.std...Z` -> `t_StdGravityAcceleration_Z`
  * `tBodyAccJerk.std...X` -> `t_StdBodyAccelerationJerk_X`
  * `tBodyAccJerk.std...Y` -> `t_StdBodyAccelerationJerk_Y`
  * `tBodyAccJerk.std...Z` -> `t_StdBodyAccelerationJerk_Z`
  * `tBodyGyro.std...X` -> `t_StdBodyAngularVelocity_X`
  * `tBodyGyro.std...Y` -> `t_StdBodyAngularVelocity_Y`
  * `tBodyGyro.std...Z` -> `t_StdBodyAngularVelocity_Z`
  * `tBodyGyroJerk.std...X` -> `t_StdBodyAngularVelocityJerk_X`
  * `tBodyGyroJerk.std...Y` -> `t_StdBodyAngularVelocityJerk_Y`
  * `tBodyGyroJerk.std...Z` -> `t_StdBodyAngularVelocityJerk_Z`
  * `tBodyAccMag.std..` -> `t_StdBodyAccelerationMagnitude`
  * `tGravityAccMag.std..` -> `t_StdGravityAccelerationMagnitude`
  * `tBodyAccJerkMag.std..` -> `t_StdBodyAccelerationJerkMagnitude`
  * `tBodyGyroMag.std..` -> `t_StdBodyAngularVelocityMagnitude`
  * `tBodyGyroJerkMag.std..` -> `t_StdBodyAngularVelocityJerkMagnitude`
  * `fBodyAcc.std...X` -> `f_StdBodyAcceleration_X`
  * `fBodyAcc.std...Y` -> `f_StdBodyAcceleration_Y`
  * `fBodyAcc.std...Z` -> `f_StdBodyAcceleration_Z`
  * `fBodyAccJerk.std...X` -> `f_StdBodyAccelerationJerk_X`
  * `fBodyAccJerk.std...Y` -> `f_StdBodyAccelerationJerk_Y`
  * `fBodyAccJerk.std...Z` -> `f_StdBodyAccelerationJerk_Z`
  * `fBodyGyro.std...X` -> `f_StdBodyAngularVelocity_X`
  * `fBodyGyro.std...Y` -> `f_StdBodyAngularVelocity_Y`
  * `fBodyGyro.std...Z` -> `f_StdBodyAngularVelocity_Z`
  * `fBodyAccMag.std..` -> `f_StdBodyAccelerationMagnitude`
  * `fBodyBodyAccJerkMag.std..` -> `f_StdBodyAccelerationJerkMagnitude`
  * `fBodyBodyGyroMag.std..` -> `f_StdBodyAngularVelocityMagnitude`
  * `fBodyBodyGyroJerkMag.std..` -> `f_StdBodyAngularVelocityJerkMagnitude`
12. transform the data into tidy data: grouped by activity and subject and means for all measurements.
13. create a `tidydata.txt` file.

*NOTE: All of these steps have also been integrated in the script itself.*

#6. Final notes
* All analyses and transformations have been done in **RStudio version 0.99.486 for Mac**.
* Raw data files have been downloaded on **26/12/2015**.
