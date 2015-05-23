

## read test set into new data frame, dF
dF <- read.table(".\\data\\UCI HAR Dataset\\test\\X_test.txt")

## add train set
dF <- rbind(dF, 
            read.table(".\\data\\UCI HAR Dataset\\train\\X_train.txt"))

## read features and create vector of column names
colNames <- read.table(".\\data\\UCI HAR Dataset\\features.txt")
colNames <- as.character(colNames[,2])

## apply column names to data frame
names(dF) <- colNames

## keep means and sds, just columns 1 to 6
dF <- dF[,1:6]

## read subjects into vector
## first test subjects, then train subjects
subject <- readLines(".\\data\\UCI HAR Dataset\\test\\subject_test.txt")
subject <- c(subject,
              readLines(".\\data\\UCI HAR Dataset\\train\\subject_train.txt"))

## add subjects as new column to data frame
dF <- cbind(subject, dF)

# read activity IDs into vector
## first test activities, then train activities
activityID <- readLines(".\\data\\UCI HAR Dataset\\test\\y_test.txt")
activityID <- c(activityID,
             readLines(".\\data\\UCI HAR Dataset\\train\\y_train.txt"))

# add activity IDs as new column to data frame
dF <- cbind(activityID, dF)

## read activity labels into data frame and merge with dF
activityLabels <- read.table(".\\data\\UCI HAR Dataset\\activity_labels.txt")
names(activityLabels) <- c("activityID", "activity")
dF <- merge(activityLabels, dF, by = "activityID")

## average for each variable for each activity and each subject
## sorted by subject
averages <- aggregate(dF[,4:9], by = dF[,c(3, 2)], mean)
averages <- averages[order(averages[,1]),]