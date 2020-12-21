## Getting and Cleaning Data Course Project
## Juan Matorras 2020/12

library(dplyr)
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip "
dataFiles <- "dataSets.zip"

## Download and unzip the dataset
if (!file.exists(dataFiles)) {download.file(fileUrl, dataFiles, method = "curl")}  
if (!file.exists("UCI HAR Dataset")) {unzip(dataFiles)}

## Load feature labels for column naming
features <- read.table("UCI HAR Dataset/features.txt")

## Load and merge test data sets by column binding
testSubjects <- read.table("UCI HAR Dataset/test/subject_test.txt", 
                           col.names = "subject")
testActivities <- read.table("UCI HAR Dataset/test/y_test.txt", 
                             col.names = "activity")
testValues <- read.table("UCI HAR Dataset/test/X_test.txt", 
                         col.names = features$V2)
testDataSet <- cbind(testSubjects, testActivities, testValues)

## Load and merge training data sets by column binding
trainSubjects <- read.table("UCI HAR Dataset/train/subject_train.txt", 
                            col.names = "subject")
trainActivities <- read.table("UCI HAR Dataset/train/y_train.txt", 
                              col.names = "activity")
trainValues <- read.table("UCI HAR Dataset/train/X_train.txt", 
                          col.names = features$V2)
trainDataSet <- cbind(trainSubjects, trainActivities, trainValues)

## Remove auxiliary data tables to save up on memory usage
rm(testSubjects, testActivities, testValues,
   trainSubjects, trainActivities, trainValues)
   
## Merge test and train data sets by row binding
fullDataSet <- rbind(trainDataSet, testDataSet)

## Extract mean and standard deviation data
## Observation: I believe it would have been more efficient to select columns
## before merging but I have kept the sequence asked for in the instructions
## for the course project
featuresMeanStdDev <- grep("mean|std", colnames(fullDataSet), value = TRUE)
fullDataSet <- select(fullDataSet, "subject", "activity", featuresMeanStdDev)

## Load activity labels and remove underscores
activityLabels <- read.table("UCI HAR Dataset/activity_labels.txt")
activityLabels$V2 <- gsub("_", " ", activityLabels$V2)

## Use descriptive activity names and convert to factor
fullDataSet$activity <- factor(fullDataSet$activity, 
                               levels = activityLabels$V1, 
                               labels = activityLabels$V2)

## Tidying up feature labels
featuresMeanStdDev <- gsub("^t", "time", featuresMeanStdDev)
featuresMeanStdDev <- gsub("^f", "frequency", featuresMeanStdDev)
featuresMeanStdDev <- gsub("[[:punct:]]", "", featuresMeanStdDev)
featuresMeanStdDev <- gsub("mean", "Mean", featuresMeanStdDev)
featuresMeanStdDev <- gsub("std", "StandardDeviation", featuresMeanStdDev)
featuresMeanStdDev <- gsub("Acc", "Accelerometer", featuresMeanStdDev)
featuresMeanStdDev <- gsub("Gyro", "Gyroscope", featuresMeanStdDev)
featuresMeanStdDev <- gsub("Mag", "Magnitude", featuresMeanStdDev)
featuresMeanStdDev <- gsub("gravity", "Gravity", featuresMeanStdDev)
featuresMeanStdDev <- gsub("Freq", "Frequency", featuresMeanStdDev)
featuresMeanStdDev <- gsub("BodyBody", "Body", featuresMeanStdDev)

## Substitute feature column names with clearer feature labels 
colnames(fullDataSet) <- c("subject", "activity", featuresMeanStdDev)

## New data set with average values of features for subjects and activities
averagesDataSet <- fullDataSet %>% group_by(subject, activity) %>% 
        summarize_all(mean)

## Write final tidy data set
write.table(averagesDataSet, file = "averagesDataSet.txt", row.names = FALSE)
