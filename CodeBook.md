UCI HAR DATASET CODEBOOK
------------------------

### STUDY DESIGN

The experiment does the following as described in the project instruction:

1.  Merges the training and the test sets to create one data set.

2.  Extracts only the measurements on the mean and standard deviation for each
    measurement.

3.  Uses descriptive activity names to name the activities in the data set.

4.  Appropriately labels the data set with descriptive activity names.

5.  Creates a second, independent tidy data set with the average of each
    variable for each activity and each subject.

Basically, there are five functions in the run_analysis.R script which perform
the above steps respectively. Step 1 reads data from the following files:
x_train, y_train, subject_train, x_test, y_test, subject_test. And merge them
together to form a data set. Data within the Inertial Signals folders are not
taken into account. In step 2, only the mean and standard deviation variables
are extracted. Note that variables like fBodyAccJerk-meanFreq()-Z are filtered.
In step 3, activity codes are substituted for more descriptive names(WALKING,
WALKING_UPSTAIRS, etc). In step 4, the column names of the data set are changed
to be more readable, like removing curly brackets. Step 5 takes the data which
is produced through step 1-4 as input to generate the result.

For more details about the run_analysis.R script, please see README.md



### CODE BOOK

-   subject

subjects of the experiment

-   activity

the activity performed

                       1.  WALKING

                       2.  WALKING_UPSTAIRS

                       3.  WALKING_DOWNSTAIRS

                       4.  SITTING

                       5.  STANDING

                       6.  LAYING

-   tBodyAccMeanX

time series body acceleration mean X

-   tBodyAccMeanY

time series body acceleration mean Y

-   tBodyAccMeanZ

time series body acceleration mean Z

-   tBodyAccStdX

time series body acceleration standard deviation X

-   tBodyAccStdY

time series body acceleration standard deviation Y

-   tBodyAccStdZ

time series body acceleration standard deviation Z

-   tGravityAccMeanX

time series gravity acceleration mean X

-   tGravityAccMeanY

time series gravity acceleration mean Y

-   tGravityAccMeanZ

time series gravity acceleration mean Z

-   tGravityAccStdX

time series gravity acceleration standard deviation X

-   tGravityAccStdY

time series gravity acceleration standard deviation Y

-   tGravityAccStdZ

time series gravity acceleration standard deviation Z

-   tBodyAccJerkMeanX

time series body acceleration Jerk signal mean X

-   tBodyAccJerkMeanY

time series body acceleration Jerk signal mean Y

-   tBodyAccJerkMeanZ

time series body acceleration Jerk signal mean Z

-   tBodyAccJerkStdX

time series body acceleration Jerk signal standard deviation X

-   tBodyAccJerkStdY

time series body acceleration Jerk signal standard deviation Y

-   tBodyAccJerkStdZ

time series body acceleration Jerk signal standard deviation Z

-   tBodyGyroMeanX

time series body gyroscope mean X

-   tBodyGyroMeanY

time series body gyroscope mean Y

-   tBodyGyroMeanZ

time series body gyroscope mean Z

-   tBodyGyroStdX

time series body gyroscope standard deviation X

-   tBodyGyroStdY

time series body gyroscope standard deviation Y

-   tBodyGyroStdZ

time series body gyroscope standard deviation Z

-   tBodyGyroJerkMeanX

time series body gyroscope Jerk signal mean X

-   tBodyGyroJerkMeanY

time series body gyroscope Jerk signal mean Y

-   tBodyGyroJerkMeanZ

time series body gyroscope Jerk signal mean Z

-   tBodyGyroJerkStdX

time series body gyroscope Jerk signal standard deviation X

-   tBodyGyroJerkStdY

time series body gyroscope Jerk signal standard deviation Y

-   tBodyGyroJerkStdZ

time series body gyroscope Jerk signal standard deviation Z

-   tBodyAccMagMean

time series body acceleration magnitude mean

-   tBodyAccMagStd

time series body acceleration magnitude standard deviation

-   tGravityAccMagMean

time series gravity acceleration magnitude mean

-   tGravityAccMagStd

time series gravity acceleration magnitude standard deviation

-   tBodyAccJerkMagMean

time series body acceleration Jerk signal magnitude mean

-   tBodyAccJerkMagStd

time series body acceleration Jerk signal magnitude standard deviation

-   tBodyGyroMagMean

time series body gyroscope magnitude mean

-   tBodyGyroMagStd

time series body gyroscope magnitude standard deviation

-   tBodyGyroJerkMagMean

time series body gyroscope Jerk signal magnitude mean

-   tBodyGyroJerkMagStd

time series body gyroscope Jerk signal magnitude standard deviation

-   fBodyAccMeanX

fourier transform body acceleration mean X

-   fBodyAccMeanY

fourier transform body acceleration mean Y

-   fBodyAccMeanZ

fourier transform body acceleration mean Z

-   fBodyAccStdX

fourier transform body acceleration standard deviation X

-   fBodyAccStdY

fourier transform body acceleration standard deviation Y

-   fBodyAccStdZ

fourier transform body acceleration standard deviation Z

-   fBodyAccJerkMeanX

fourier transform body acceleration Jerk signal mean X

-   fBodyAccJerkMeanY

fourier transform body acceleration Jerk signal mean Y

-   fBodyAccJerkMeanZ

fourier transform body acceleration Jerk signal mean Z

-   fBodyAccJerkStdX

fourier transform body acceleration Jerk signal standard deviation X

-   fBodyAccJerkStdY

fourier transform body acceleration Jerk signal standard deviation Y

-   fBodyAccJerkStdZ

fourier transform body acceleration Jerk signal standard deviation Z

-   fBodyGyroMeanX

fourier transform body gyroscope mean X

-   fBodyGyroMeanY

fourier transform body gyroscope mean Y

-   fBodyGyroMeanZ

fourier transform body gyroscope mean Z

-   fBodyGyroStdX

fourier transform body gyroscope standard deviation X

-   fBodyGyroStdY

fourier transform body gyroscope standard deviation Y

-   fBodyGyroStdZ

fourier transform body gyroscope standard deviation Z

-   fBodyAccMagMean

fourier transform body acceleration magnitude mean

-   fBodyAccMagStd

fourier transform body acceleration magnitude standard deviation

-   fBodyAccJerkMagMean

fourier transform body acceleration Jerk signal magnitude mean

-   fBodyAccJerkMagStd

fourier transform body acceleration Jerk signal magnitude standard deviation

-   fBodyGyroMagMean

fourier transform body gyroscope magnitude mean

-   fBodyGyroMagStd

fourier transform body gyroscope magnitude standard deviation

-   fBodyGyroJerkMagMean

fourier transform body gyroscope Jerk signal magnitude mean

-   fBodyGyroJerkMagStd

fourier transform body gyroscope Jerk signal magnitude standard deviation


