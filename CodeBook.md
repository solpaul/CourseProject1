# Code Book

The function wearable, contained within run_analysis.R performs the following transformations on the UCI HAR Dataset:

1. Read the training set (X_test.txt) and test set (X_train.txt) into a data frame, dF.
2. Read the column headings (features.txt) into a vector and use it to label the columns in dF.
3. Truncates dF, keeping the first six columns containing means and standard deviations.
4. Read test and train observation subjects (subject_test.txt & subject_train.txt) and activities (y_test.txt & y_train.txt) into vectors and join with dF.
5. Read descriptive activity names (activity_labels.txt) into a data frame, and then merge with dF on the activity id.
6. Compute the average for all mean and standard values for each subject performing each activity.

When run, the function returns the dataframe from step 6. This contains a data frame with the following columns:

subject - the subject who performed the activity for each window sample. Its range is from 1 to 30.

activity - the activity the subject was performing

tBodyAcc-mean()-X - the average of all the X body acceleration means for the subject and activity.

tBodyAcc-mean()-Y - the average of all the Y body acceleration means for the subject and activity.

tBodyAcc-mean()-Z - the average of all the Z body acceleration means for the subject and activity.

tBodyAcc-std()-X - the average of all the X body acceleration standard deviations for the subject and activity.

tBodyAcc-std()-Y - the average of all the Y body acceleration standard deviations for the subject and activity.

tBodyAcc-std()-Z - the average of all the Z body acceleration standard deviations for the subject and activity.
