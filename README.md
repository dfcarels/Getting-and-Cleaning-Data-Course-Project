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
* `CodeBook.md`: the code book describing the data (source, format, variables, ...), and the transformation script `run_analysis.R` in detail; 
* `README.md`: this readme file.

#3. High level outline of the run_analysis.R script
The `run_analysis.R` script:

1. Merges the training and the test sets to create one data set;

2. Extracts only the measurements on the mean and standard deviation for each measurement; 

3. Uses descriptive activity names to name the activities in the data set;

4. Appropriately labels the data set with descriptive variable names;

5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

*More details to this script can be found in the code book and the script file itself.*
