# Repo Contents
This repo contains my solution for the course project for Getting and Cleaning Data from John Hopkins University, through Coursera.
The script run_analysis.R contains a function to carry out operations on a data set from the UCI Machine Learning Repository, contained within "data/UCI HAR Dataset". A full description is available at the site where the data were obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The data can be obtained here:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

run_analysis.R takes the data in the repo and transforms it to do the following:

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

The function returns the tidy data set described in point 5.

Also contained is a markup file, CodeBook.md, a code book that describes the variables, the data, and any transformations or work that are performed to clean up the data.