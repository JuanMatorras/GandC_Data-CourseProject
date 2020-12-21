Getting and Cleaning Data Course - Course Project

Juan Matorras - 2020/12

Tidy Data Project

The data sets used for this project were downloaded from: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

This data sets contain information collected from accelerometers from smartphones (Samsung Galaxy S) while the users were performing certain activities. A complete description of the data and its collection process is available at: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

This project consists of a single script (run_analysis.R).

The script performs the following tasks:

1. Merges the training and the test sets to create one data set, named "fullDataSet". 
2.- Extracts only the measurements on the mean and standard deviation for each measurement.  
3.- Uses descriptive activity names to name the activities in the data set.  
4.- Appropriately labels the data set with descriptive variable names.  
5.- From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each subject and activity, named "averagesDataSet"", and writes it as a .txt file.  
