---
title: "README - Getting & Cleaning Data Project"
author: "dfcarels"
date: "December 2015"
output: html_document
---

#1. Summary of the project
This repo has been created for the project in the online Coursera course **'Getting & Cleaning Data'** as part of the **'Data Science' specialization** organized by the Johns Hopkins University. 

Purpose of the project is to demonstrate the ability to **collect, work with, and clean a data set.** The goal is to prepare **tidy data** that can be used for later analysis. It is required to submit: 

1) a **tidy data set**;

2) a **link to a Github repository** with the **script** for performing the analysis. This script should allow the following: 
  * Merges the training and the test sets to create one data set.
  * Extracts only the measurements on the mean and standard deviation for each measurement. 
  * Uses descriptive activity names to name the activities in the data set
  * Appropriately labels the data set with descriptive variable names. 
  * From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

3) a **code book** that describes the variables, the data, and any transformations or work that you performed to clean up the data;

4) a **readme file** which explains how all of the scripts work and how they are connected.  

#2. Output files in the repo
There are **4 output files** in this repo:

* `tidydata.txt`: the tidy data set as a result of the `run_analysis.R` script;
* `run_analysis.R`: the script to clean and transform the raw data and to create the `tidydata.txt` dataset;
* `CodeBook.Rmd`: the code book describing the data (source, format, variables, ...), and the transformation script `run_analysis.R` in detail; 
* `README.Rmd`: this readme file.

#3. Outline of the run_analysis.R script
The `run_analysis.R` script:

1. Merges the training and the test sets to create one data set;

2. Extracts only the measurements on the mean and standard deviation for each measurement; 

3. Uses descriptive activity names to name the activities in the data set;

4. Appropriately labels the data set with descriptive variable names;

5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

*More details to this script can be found in the code book and the script file itself, but are repeated here as well.*

In more detail, the script `run_analysis.R` contains the following **steps** performed on the data to in the end create the `tidydata.txt` dataset:

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

**Final notes:**
* All analyses and transformations have been done in **RStudio version 0.99.486 for Mac**.
* Raw data files have been downloaded on **26/12/2015**.
