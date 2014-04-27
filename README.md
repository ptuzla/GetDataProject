GetDataProject
==============

### Human Activity Recognition Using Smartphones Data Set 

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, researchers captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz (resulting in 561-feature vector with time and frequency domain variables).

The data file [tidy_data_average.txt](tidy_data_average.txt) extracts calculated means on the following signals: <br>
tBodyAcc-XYZ <br>
tGravityAcc-XYZ <br>
tBodyAccJerk-XYZ <br>
tBodyGyro-XYZ <br>
tBodyGyroJerk-XYZ <br>
tBodyAccMag <br>
tGravityAccMag <br>
tBodyAccJerkMag <br>
tBodyGyroMag <br>
tBodyGyroJerkMag <br>
fBodyAcc-XYZ <br>
fBodyAccJerk-XYZ <br>
fBodyGyro-XYZ <br>
fBodyAccMag <br>
fBodyAccJerkMag <br>
fBodyGyroMag<br>
fBodyGyroJerkMag<br>


### The script run_analysis.R does the following:

1. Downloads the original data set and extracts to zip file, if there isn't one already in a folder named `data` in the current working directory
2. Reads the files in the data set
3. Merges the training and the test sets to create one data set.
4. Extracts only the measurements on the mean and standard deviation for each measurement. 
5. Uses descriptive activity names to name the activities in the data set
6. Appropriately labels the data set with descriptive activity names. 
7. Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 

### Running the script
- Clone this repository
- Change current directory to the project folder.
- Run `Rscript <path to>/run_analysis.R`
- The tidy data set should be created in the current directory as [tidy_data.txt](tidy_data.txt)
- The tidy data set of averages should be created in the current directory as [tidy_data_average.txt](tidy_data_average.txt)
- Code book for the tidy data set is available [here](CodeBook.md)
