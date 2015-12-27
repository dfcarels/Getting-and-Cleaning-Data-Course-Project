#load libraries
library(data.table)
library(reshape2)
library(dplyr)
library(plyr)

#read in column headers from 'features.txt'
features <- read.table("features.txt", col.names = c("Nbr", "Headers"))
colheaders <- features$Headers

#read in X files and add column headers from 'features.txt'
testX <- read.table("X_test.txt", col.names = colheaders)
trainX <- read.table("X_train.txt", col.names = colheaders)

#read in Y files and add 'activity' as column header
testY <- read.table("y_test.txt", col.names = "activity")
trainY <- read.table("y_train.txt", col.names = "activity")

#read in subject files and add 'subject' as column header
testSubj <- read.table("subject_test.txt", col.names = "subject")
trainSubj <- read.table("subject_train.txt", col.names = "subject")

#cbind all test files
testAllData <- cbind(testSubj, testY, testX)

#cbind all training files
trainAllData <- cbind(trainSubj, trainY, trainX)

#merge test and training files
AllData <- merge(testAllData, trainAllData, all = TRUE)

#extract the measurements columns with 'mean' and 'std' (standard deviation) 
#in their header name and bind these to the 'subject' and 'activity' columns.
AllDataStd <-  AllData[ , grepl("std()", names(AllData))]
AllDataMean <-  AllData[ , grepl("mean()", names(AllData))]
AllDataJoint <- cbind(AllData[, c(1,2)], AllDataMean, AllDataStd)

#replace activity integers by descriptive variable names
for(i in 1:nrow(AllData)) {
        
        if(AllDataJoint$activity[i] == 1) {AllDataJoint$activity[i] <- "WALKING"}
        else if(AllDataJoint$activity[i] == 2) {AllDataJoint$activity[i] <- "WALKING_UPSTAIRS" }
        else if(AllDataJoint$activity[i] == 3) {AllDataJoint$activity[i] <- "WALKING_DOWNSTAIRS" }
        else if(AllDataJoint$activity[i] == 4) {AllDataJoint$activity[i] <- "SITTING" }
        else if(AllDataJoint$activity[i] == 5) {AllDataJoint$activity[i] <- "STANDING" }
        else {AllDataJoint$activity[i] <- "LAYING" }
        i <- i + 1
        
}

#rename column headers with descriptive variable names
AllDataFinal <- dplyr::rename(AllDataJoint,
        t_MeanBodyAcceleration_X	 = 	tBodyAcc.mean...X	,
        t_MeanBodyAcceleration_Y	 = 	tBodyAcc.mean...Y	,
        t_MeanBodyAcceleration_Z	 = 	tBodyAcc.mean...Z	,
        t_MeanGravityAcceleration_X	 = 	tGravityAcc.mean...X	,
        t_MeanGravityAcceleration_Y	 = 	tGravityAcc.mean...Y	,
        t_MeanGravityAcceleration_Z	 = 	tGravityAcc.mean...Z	,
        t_MeanBodyAccelerationJerk_X	 = 	tBodyAccJerk.mean...X	,
        t_MeanBodyAccelerationJerk_Y	 = 	tBodyAccJerk.mean...Y	,
        t_MeanBodyAccelerationJerk_Z	 = 	tBodyAccJerk.mean...Z	,
        t_MeanBodyAngularVelocity_X	 = 	tBodyGyro.mean...X	,
        t_MeanBodyAngularVelocity_Y	 = 	tBodyGyro.mean...Y	,
        t_MeanBodyAngularVelocity_Z	 = 	tBodyGyro.mean...Z	,
        t_MeanBodyAngularVelocityJerk_X	 = 	tBodyGyroJerk.mean...X	,
        t_MeanBodyAngularVelocityJerk_Y	 = 	tBodyGyroJerk.mean...Y	,
        t_MeanBodyAngularVelocityJerk_Z	 = 	tBodyGyroJerk.mean...Z	,
        t_MeanBodyAccelerationMagnitude	 = 	tBodyAccMag.mean..	,
        t_MeanGravityAccelerationMagnitude	 = 	tGravityAccMag.mean..	,
        t_MeanBodyAccelerationJerkMagnitude	 = 	tBodyAccJerkMag.mean..	,
        t_MeanBodyAngularVelocityMagnitude	 = 	tBodyGyroMag.mean..	,
        t_MeanBodyAngularVelocityJerkMagnitude	 = 	tBodyGyroJerkMag.mean..	,
        f_MeanBodyAcceleration_X	 = 	fBodyAcc.mean...X	,
        f_MeanBodyAcceleration_Y	 = 	fBodyAcc.mean...Y	,
        f_MeanBodyAcceleration_Z	 = 	fBodyAcc.mean...Z	,
        f_MeanFreqBodyAcceleration_X	 = 	fBodyAcc.meanFreq...X	,
        f_MeanFreqBodyAcceleration_Y	 = 	fBodyAcc.meanFreq...Y	,
        f_MeanFreqBodyAcceleration_Z	 = 	fBodyAcc.meanFreq...Z	,
        f_MeanBodyAccelerationJerk_X	 = 	fBodyAccJerk.mean...X	,
        f_MeanBodyAccelerationJerk_Y	 = 	fBodyAccJerk.mean...Y	,
        f_MeanBodyAccelerationJerk_Z	 = 	fBodyAccJerk.mean...Z	,
        f_MeanFreqBodyAccelerationJerk_X	 = 	fBodyAccJerk.meanFreq...X	,
        f_MeanFreqBodyAccelerationJerk_Y	 = 	fBodyAccJerk.meanFreq...Y	,
        f_MeanFreqBodyAccelerationJerk_Z	 = 	fBodyAccJerk.meanFreq...Z	,
        f_MeanBodyAngularVelocity_X	 = 	fBodyGyro.mean...X	,
        f_MeanBodyAngularVelocity_Y	 = 	fBodyGyro.mean...Y	,
        f_MeanBodyAngularVelocity_Z	 = 	fBodyGyro.mean...Z	,
        f_MeanFreqBodyAngularVelocity_X	 = 	fBodyGyro.meanFreq...X	,
        f_MeanFreqBodyAngularVelocity_Y	 = 	fBodyGyro.meanFreq...Y	,
        f_MeanFreqBodyAngularVelocity_Z	 = 	fBodyGyro.meanFreq...Z	,
        f_MeanBodyAccelerationMagnitude	 = 	fBodyAccMag.mean..	,
        f_MeanFreqBodyAccelerationMagnitude	 = 	fBodyAccMag.meanFreq..	,
        f_MeanBodyAccelerationJerkMagnitude	 = 	fBodyBodyAccJerkMag.mean..	,
        f_MeanFreqBodyAccelerationJerkMagnitude	 = 	fBodyBodyAccJerkMag.meanFreq..	,
        f_MeanBodyAngularVelocityMagnitude	 = 	fBodyBodyGyroMag.mean..	,
        f_MeanFreqBodyAngularVelocityMagnitude	 = 	fBodyBodyGyroMag.meanFreq..	,
        f_MeanBodyAngularVelocityJerkMagnitude	 = 	fBodyBodyGyroJerkMag.mean..	,
        f_MeanFreqBodyAngularVelocityJerkMagnitude	 = 	fBodyBodyGyroJerkMag.meanFreq..	,
        t_StdBodyAcceleration_X	 = 	tBodyAcc.std...X	,
        t_StdBodyAcceleration_Y	 = 	tBodyAcc.std...Y	,
        t_StdBodyAcceleration_Z	 = 	tBodyAcc.std...Z	,
        t_StdGravityAcceleration_X	 = 	tGravityAcc.std...X	,
        t_StdGravityAcceleration_Y	 = 	tGravityAcc.std...Y	,
        t_StdGravityAcceleration_Z	 = 	tGravityAcc.std...Z	,
        t_StdBodyAccelerationJerk_X	 = 	tBodyAccJerk.std...X	,
        t_StdBodyAccelerationJerk_Y	 = 	tBodyAccJerk.std...Y	,
        t_StdBodyAccelerationJerk_Z	 = 	tBodyAccJerk.std...Z	,
        t_StdBodyAngularVelocity_X	 = 	tBodyGyro.std...X	,
        t_StdBodyAngularVelocity_Y	 = 	tBodyGyro.std...Y	,
        t_StdBodyAngularVelocity_Z	 = 	tBodyGyro.std...Z	,
        t_StdBodyAngularVelocityJerk_X	 = 	tBodyGyroJerk.std...X	,
        t_StdBodyAngularVelocityJerk_Y	 = 	tBodyGyroJerk.std...Y	,
        t_StdBodyAngularVelocityJerk_Z	 = 	tBodyGyroJerk.std...Z	,
        t_StdBodyAccelerationMagnitude	 = 	tBodyAccMag.std..	,
        t_StdGravityAccelerationMagnitude	 = 	tGravityAccMag.std..	,
        t_StdBodyAccelerationJerkMagnitude	 = 	tBodyAccJerkMag.std..	,
        t_StdBodyAngularVelocityMagnitude	 = 	tBodyGyroMag.std..	,
        t_StdBodyAngularVelocityJerkMagnitude	 = 	tBodyGyroJerkMag.std..	,
        f_StdBodyAcceleration_X	 = 	fBodyAcc.std...X	,
        f_StdBodyAcceleration_Y	 = 	fBodyAcc.std...Y	,
        f_StdBodyAcceleration_Z	 = 	fBodyAcc.std...Z	,
        f_StdBodyAccelerationJerk_X	 = 	fBodyAccJerk.std...X	,
        f_StdBodyAccelerationJerk_Y	 = 	fBodyAccJerk.std...Y	,
        f_StdBodyAccelerationJerk_Z	 = 	fBodyAccJerk.std...Z	,
        f_StdBodyAngularVelocity_X	 = 	fBodyGyro.std...X	,
        f_StdBodyAngularVelocity_Y	 = 	fBodyGyro.std...Y	,
        f_StdBodyAngularVelocity_Z	 = 	fBodyGyro.std...Z	,
        f_StdBodyAccelerationMagnitude	 = 	fBodyAccMag.std..	,
        f_StdBodyAccelerationJerkMagnitude	 = 	fBodyBodyAccJerkMag.std..	,
        f_StdBodyAngularVelocityMagnitude	 = 	fBodyBodyGyroMag.std..	,
        f_StdBodyAngularVelocityJerkMagnitude	 = 	fBodyBodyGyroJerkMag.std..	
        )

#transform data into tidy data: grouped by activity and subject and means for all measurements
tidydata <- ddply(AllDataFinal, .(activity, subject), numcolwise(mean))

#create tidy data txt file
write.table(tidydata, file = "tidydata.txt", row.name = FALSE)
