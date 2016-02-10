Code book for the Getting and Cleaning Data Course Project
==

General description
-

## tidy_dataset1

### Description
The tidy_dataset1.txt file is a space separate text file that contains a tidy data  
set obtained by merging and then keeping only the mean and the standard deviation of  
each measure from the files:

*train/X_train.txt
*train/subject_train.txt
*train/y_train.txt
*test/X_test.txt
*test/subject_test.txt
*test/y_test.txt

and by using the labels from :

*features.txt
*activity_labels.txt

This file contains its headers and the dataset has 10299 observations and 68 variables

### feature selection (extract from the features_info.txt file)

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

*tBodyAcc-XYZ
*tGravityAcc-XYZ
*tBodyAccJerk-XYZ
*tBodyGyro-XYZ
*tBodyGyroJerk-XYZ
*tBodyAccMag
*tGravityAccMag
*tBodyAccJerkMag
*tBodyGyroMag
*tBodyGyroJerkMag
*fBodyAcc-XYZ
*fBodyAccJerk-XYZ
*fBodyGyro-XYZ
*fBodyAccMag
*fBodyAccJerkMag
*fBodyGyroMag
*fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

*mean(): Mean value
*std(): Standard deviation

### Steps to obtain the tidy_dataset1.txt
All the process correspond to the steps 1 to 4 coded in run_analysis.R

step1.Merges the training and the test sets to create one data set
step4.Appropriately labels the data set with descriptive variable names
step2.Extracts only the measurements on the mean and standard deviation for each measurement
step3.Uses descriptive activity names to name the activities in the data set


## tidy_dataset2

### Description
The tidy_dataset2.txt file is a space separate text file that contains a tidy data  
set obtained by reshaping tidy_dataset1 to show the average of each measure variables for each activity and for each subject

This file contains its headers and the dataset has 180 observations and 68 variables

### feature selection

The features selected are based on the features selected in tidy_dataset1 and have the same units

*Average of tBodyAcc-XYZ.mean()
*Average of tBodyAcc-XYZ.std()
*Average of tGravityAcc-XYZ.mean()
*Average of tGravityAcc-XYZ.std()
*Average of tBodyAccJerk-XYZ.mean()
*Average of tBodyAccJerk-XYZ.std()
*Average of tBodyGyro-XYZ.mean()
*Average of tBodyGyro-XYZ.std()
*Average of tBodyGyroJerk-XYZ.mean()
*Average of tBodyGyroJerk-XYZ.std()
*Average of tBodyAccMag.mean()
*Average of tBodyAccMag.std()
*Average of tGravityAccMag.mean()
*Average of tGravityAccMag.std()
*Average of tBodyAccJerkMag.mean()
*Average of tBodyAccJerkMag.std()
*Average of tBodyGyroMag.mean()
*Average of tBodyGyroMag.std()
*Average of tBodyGyroJerkMag.mean()
*Average of tBodyGyroJerkMag.std()
*Average of fBodyAcc-XYZ.mean()
*Average of fBodyAcc-XYZ.std()
*Average of fBodyAccJerk-XYZ.mean()
*Average of fBodyAccJerk-XYZ.std()
*Average of fBodyGyro-XYZ.mean()
*Average of fBodyGyro-XYZ.std()
*Average of fBodyAccMag.mean()
*Average of fBodyAccMag.std()
*Average of fBodyAccJerkMag.mean()
*Average of fBodyAccJerkMag.std()
*Average of fBodyGyroMag.mean()
*Average of fBodyGyroMag.std()
*Average of fBodyGyroJerkMag.mean()
*Average of fBodyGyroJerkMag.std()

### Steps to obtain the tidy_dataset2.txt

All the process correspond to the step 5 in run_analysis.R

1.melt tidy_dataset1 to identify "subject" and "activity" as id variables and the others as measure variables
2.use the dcast() function to get the average of each measure variable for each activity and each subject
3.modify the measure variables' names to distinguish then from those in tidy_dataset1






Detailed Description
-

## tidy_dataset1

### Variables

| Variable name              | Class                | Description              |
| -------------------------- | -------------------- | ------------------------ |
| subject                    | int                  | subject id               |
| activity                   | factor with 6 levels | activity performed       |
| tBodyAcc.mean...X          | num                  | see "features selection" |
| tBodyAcc.mean...Y          | num                  | see "features selection" |
| tBodyAcc.mean...Z          | num                  | see "features selection" |
| tBodyAcc.std...X           | num                  | see "features selection" |
| tBodyAcc.std...Y           | num                  | see "features selection" |
| tBodyAcc.std...Z           | num                  | see "features selection" |
| tGravityAcc.mean...X       | num                  | see "features selection" |
| tGravityAcc.mean...Y       | num                  | see "features selection" |
| tGravityAcc.mean...Z       | num                  | see "features selection" |
| tGravityAcc.std...X        | num                  | see "features selection" |
| tGravityAcc.std...Y        | num                  | see "features selection" |
| tGravityAcc.std...Z        | num                  | see "features selection" |
| tBodyAccJerk.mean...X      | num                  | see "features selection" |
| tBodyAccJerk.mean...Y      | num                  | see "features selection" |
| tBodyAccJerk.mean...Z      | num                  | see "features selection" |
| tBodyAccJerk.std...X       | num                  | see "features selection" |
| tBodyAccJerk.std...Y       | num                  | see "features selection" |
| tBodyAccJerk.std...Z       | num                  | see "features selection" |
| tBodyGyro.mean...X         | num                  | see "features selection" |
| tBodyGyro.mean...Y         | num                  | see "features selection" |
| tBodyGyro.mean...Z         | num                  | see "features selection" |
| tBodyGyro.std...X          | num                  | see "features selection" |
| tBodyGyro.std...Y          | num                  | see "features selection" |
| tBodyGyro.std...Z          | num                  | see "features selection" |
| tBodyGyroJerk.mean...X     | num                  | see "features selection" |
| tBodyGyroJerk.mean...Y     | num                  | see "features selection" |
| tBodyGyroJerk.mean...Z     | num                  | see "features selection" |
| tBodyGyroJerk.std...X      | num                  | see "features selection" |
| tBodyGyroJerk.std...Y      | num                  | see "features selection" |
| tBodyGyroJerk.std...Z      | num                  | see "features selection" |
| tBodyAccMag.mean..         | num                  | see "features selection" |
| tBodyAccMag.std..          | num                  | see "features selection" |
| tGravityAccMag.mean..      | num                  | see "features selection" |
| tGravityAccMag.std..       | num                  | see "features selection" |
| tBodyAccJerkMag.mean..     | num                  | see "features selection" |
| tBodyAccJerkMag.std..      | num                  | see "features selection" |
| tBodyGyroMag.mean..        | num                  | see "features selection" |
| tBodyGyroMag.std..         | num                  | see "features selection" |
| tBodyGyroJerkMag.mean..    | num                  | see "features selection" |
| tBodyGyroJerkMag.std..     | num                  | see "features selection" |
| fBodyAcc.mean...X          | num                  | see "features selection" |
| fBodyAcc.mean...Y          | num                  | see "features selection" |
| fBodyAcc.mean...Z          | num                  | see "features selection" |
| fBodyAcc.std...X           | num                  | see "features selection" |
| fBodyAcc.std...Y           | num                  | see "features selection" |
| fBodyAcc.std...Z           | num                  | see "features selection" |
| fBodyAccJerk.mean...X      | num                  | see "features selection" |
| fBodyAccJerk.mean...Y      | num                  | see "features selection" |
| fBodyAccJerk.mean...Z      | num                  | see "features selection" |
| fBodyAccJerk.std...X       | num                  | see "features selection" |
| fBodyAccJerk.std...Y       | num                  | see "features selection" |
| fBodyAccJerk.std...Z       | num                  | see "features selection" |
| fBodyGyro.mean...X         | num                  | see "features selection" |
| fBodyGyro.mean...Y         | num                  | see "features selection" |
| fBodyGyro.mean...Z         | num                  | see "features selection" |
| fBodyGyro.std...X          | num                  | see "features selection" |
| fBodyGyro.std...Y          | num                  | see "features selection" |
| fBodyGyro.std...Z          | num                  | see "features selection" |
| fBodyAccMag.mean..         | num                  | see "features selection" |
| fBodyAccMag.std..          | num                  | see "features selection" |
| fBodyBodyAccJerkMag.mean.. | num                  | see "features selection" |
| fBodyBodyAccJerkMag.std..  | num                  | see "features selection" |
| fBodyBodyGyroMag.mean..    | num                  | see "features selection" |
| fBodyBodyGyroMag.std..     | num                  | see "features selection" |
| fBodyBodyGyroJerkMag.mean..| num                  | see "features selection" |
| fBodyBodyGyroJerkMag.std.. | num                  | see "features selection" |

## tidy_dataset2

### Variables

| Variable name                          | Class                | Description              |
| -------------------------------------- | -------------------- | ------------------------ |
| activity                               | factor with 6 levels | activity performed       |
| subjecty                               | int                  | subject id               |
| average.of. tBodyAcc.mean...X          | num                  | see "features selection" |
| average.of. tBodyAcc.mean...Y          | num                  | see "features selection" |
| average.of. tBodyAcc.mean...Z          | num                  | see "features selection" |
| average.of. tBodyAcc.std...X           | num                  | see "features selection" |
| average.of. tBodyAcc.std...Y           | num                  | see "features selection" |
| average.of. tBodyAcc.std...Z           | num                  | see "features selection" |
| average.of. tGravityAcc.mean...X       | num                  | see "features selection" |
| average.of. tGravityAcc.mean...Y       | num                  | see "features selection" |
| average.of. tGravityAcc.mean...Z       | num                  | see "features selection" |
| average.of. tGravityAcc.std...X        | num                  | see "features selection" |
| average.of. tGravityAcc.std...Y        | num                  | see "features selection" |
| average.of. tGravityAcc.std...Z        | num                  | see "features selection" |
| average.of. tBodyAccJerk.mean...X      | num                  | see "features selection" |
| average.of. tBodyAccJerk.mean...Y      | num                  | see "features selection" |
| average.of. tBodyAccJerk.mean...Z      | num                  | see "features selection" |
| average.of. tBodyAccJerk.std...X       | num                  | see "features selection" |
| average.of. tBodyAccJerk.std...Y       | num                  | see "features selection" |
| average.of. tBodyAccJerk.std...Z       | num                  | see "features selection" |
| average.of. tBodyGyro.mean...X         | num                  | see "features selection" |
| average.of. tBodyGyro.mean...Y         | num                  | see "features selection" |
| average.of. tBodyGyro.mean...Z         | num                  | see "features selection" |
| average.of. tBodyGyro.std...X          | num                  | see "features selection" |
| average.of. tBodyGyro.std...Y          | num                  | see "features selection" |
| average.of. tBodyGyro.std...Z          | num                  | see "features selection" |
| average.of. tBodyGyroJerk.mean...X     | num                  | see "features selection" |
| average.of. tBodyGyroJerk.mean...Y     | num                  | see "features selection" |
| average.of. tBodyGyroJerk.mean...Z     | num                  | see "features selection" |
| average.of. tBodyGyroJerk.std...X      | num                  | see "features selection" |
| average.of. tBodyGyroJerk.std...Y      | num                  | see "features selection" |
| average.of. tBodyGyroJerk.std...Z      | num                  | see "features selection" |
| average.of. tBodyAccMag.mean..         | num                  | see "features selection" |
| average.of. tBodyAccMag.std..          | num                  | see "features selection" |
| average.of. tGravityAccMag.mean..      | num                  | see "features selection" |
| average.of. tGravityAccMag.std..       | num                  | see "features selection" |
| average.of. tBodyAccJerkMag.mean..     | num                  | see "features selection" |
| average.of. tBodyAccJerkMag.std..      | num                  | see "features selection" |
| average.of. tBodyGyroMag.mean..        | num                  | see "features selection" |
| average.of. tBodyGyroMag.std..         | num                  | see "features selection" |
| average.of. tBodyGyroJerkMag.mean..    | num                  | see "features selection" |
| average.of. tBodyGyroJerkMag.std..     | num                  | see "features selection" |
| average.of. fBodyAcc.mean...X          | num                  | see "features selection" |
| average.of. fBodyAcc.mean...Y          | num                  | see "features selection" |
| average.of. fBodyAcc.mean...Z          | num                  | see "features selection" |
| average.of. fBodyAcc.std...X           | num                  | see "features selection" |
| average.of. fBodyAcc.std...Y           | num                  | see "features selection" |
| average.of. fBodyAcc.std...Z           | num                  | see "features selection" |
| average.of. fBodyAccJerk.mean...X      | num                  | see "features selection" |
| average.of. fBodyAccJerk.mean...Y      | num                  | see "features selection" |
| average.of. fBodyAccJerk.mean...Z      | num                  | see "features selection" |
| average.of. fBodyAccJerk.std...X       | num                  | see "features selection" |
| average.of. fBodyAccJerk.std...Y       | num                  | see "features selection" |
| average.of. fBodyAccJerk.std...Z       | num                  | see "features selection" |
| average.of. fBodyGyro.mean...X         | num                  | see "features selection" |
| average.of. fBodyGyro.mean...Y         | num                  | see "features selection" |
| average.of. fBodyGyro.mean...Z         | num                  | see "features selection" |
| average.of. fBodyGyro.std...X          | num                  | see "features selection" |
| average.of. fBodyGyro.std...Y          | num                  | see "features selection" |
| average.of. fBodyGyro.std...Z          | num                  | see "features selection" |
| average.of. fBodyAccMag.mean..         | num                  | see "features selection" |
| average.of. fBodyAccMag.std..          | num                  | see "features selection" |
| average.of. fBodyBodyAccJerkMag.mean.. | num                  | see "features selection" |
| average.of. fBodyBodyAccJerkMag.std..  | num                  | see "features selection" |
| average.of. fBodyBodyGyroMag.mean..    | num                  | see "features selection" |
| average.of. fBodyBodyGyroMag.std..     | num                  | see "features selection" |
| average.of. fBodyBodyGyroJerkMag.mean..| num                  | see "features selection" |
| average.of. fBodyBodyGyroJerkMag.std.. | num                  | see "features selection" |