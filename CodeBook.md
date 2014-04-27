
Codebook
========================================================


### Variables 
For the purposes of this study, the test and training sets of the original study were combined into one data set.  The final data set contains data associated with all subjects of the experiment, all results of each observation, and the mean and standard deviation of each type of measurement.

Details regarding the code used to load the data is located in the README.md markdown file.

Each set of feature variables are stored contiguously in the data set.  Six variables are stored in each set based on the mean and standard deviation of the values captured over the observed time period (i.e., the 'mean()' and 'std()' variables only) in the X, Y, and Z directions.  For example, the tBodyAcc feature is listed in the data set with the following six variables: tBodyAcc-mean()-X, tBodyAcc-mean()-Y, tBodyAcc-mean()-Z, tBodyAcc-std()-X, tBodyAcc-std()-Y, tBodyAcc-std()-Z.  In the Variable Details section, only the feature name will be listed for each set.  However, the magnitude-type variables are Euclidean norms and the X, Y, and Z directions do not apply.

### Variable Details
dataset - Factor indicating if the observation originated in the test or training data set

subject - Identifier of the subject associated with the observation
activityId- Index of resulting activity of the observation associated with the activityName.

activity - Name of the activity.  Will be one of WALKING (activityIndex = 1), WALKING_UPSTAIRS (2), WALKING_DOWNSTAIRS (3), SITTING (4), STANDING (5), LAYING (6)

tBodyAcc - Body acceleration signal.

tGravityAcc - Gravity acceleration signal

tBodyAccJerk - Derived body linear acceleration.

tBodyGyro - Angular body velocity.

tBodyGyroJerk - Derived angular velocity.

tBodyAccMag - Magnitude (using Euclidian norm) of body acceleration signal.

tGravityAccMag - Magnitude (using Euclidean norm) of gravity acceleration 
signal.

tBodyAccJerkMag - Magnitude (using Euclidean norm) of derived body linear 
acceleration.

tBodyGyroMag - Magnitude (using Euclidean norm) of angular body velocity.

tBodyGyroJerkMag - Magnitude (using Euclidean norm) of derived angular velocity.

fBodyAcc - Fast Fourier Transform (FFT) applied to body acceleration signal.

fBodyAccJerk - FFT applied to derived body linear acceleration.

fBodyGyro - FFT applied to angular body velocity.

fBodyAccMag - Magnitude (using Euclidean norm) of FFT applied to body 
acceleration signal.

fBodyBodyAccJerkMag - Magnitude (using Euclidean norm) of FFT applied to 
derived body linear acceleration.

fBodyBodyGyroMag - Magnitude of (using Euclidean norm) FFT applied to angular body velocity.

fBodyBodyGyroJerkMag - Magnitude of (using Euclidean norm) FFT applied to derived angular velocity.

### Acknowledgement
Data for this study was obtained from the following publication: 

Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

Details of the publication can be found here: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

### List of Features
* dataSet
* subject
* activityId
* activity
* tBodyAcc-mean()-X
* tBodyAcc-mean()-Y
* tBodyAcc-mean()-Z
* tBodyAcc-std()-X
* tBodyAcc-std()-Y
* tBodyAcc-std()-Z
* tGravityAcc-mean()-X
* tGravityAcc-mean()-Y
* tGravityAcc-mean()-Z
* tGravityAcc-std()-X
* tGravityAcc-std()-Y
* tGravityAcc-std()-Z
* tBodyAccJerk-mean()-X
* tBodyAccJerk-mean()-Y
* tBodyAccJerk-mean()-Z
* tBodyAccJerk-std()-X
* tBodyAccJerk-std()-Y
* tBodyAccJerk-std()-Z
* tBodyGyro-mean()-X
* tBodyGyro-mean()-Y
* tBodyGyro-mean()-Z
* tBodyGyro-std()-X
* tBodyGyro-std()-Y
* tBodyGyro-std()-Z
* tBodyGyroJerk-mean()-X
* tBodyGyroJerk-mean()-Y
* tBodyGyroJerk-mean()-Z
* tBodyGyroJerk-std()-X
* tBodyGyroJerk-std()-Y
* tBodyGyroJerk-std()-Z
* tBodyAccMag-mean()
* tBodyAccMag-std()
* tGravityAccMag-mean()
* tGravityAccMag-std()
* tBodyAccJerkMag-mean()
* tBodyAccJerkMag-std()
* tBodyGyroMag-mean()
* tBodyGyroMag-std()
* tBodyGyroJerkMag-mean()
* tBodyGyroJerkMag-std()
* fBodyAcc-mean()-X
* fBodyAcc-mean()-Y
* fBodyAcc-mean()-Z
* fBodyAcc-std()-X
* fBodyAcc-std()-Y
* fBodyAcc-std()-Z
* fBodyAccJerk-mean()-X
* fBodyAccJerk-mean()-Y
* fBodyAccJerk-mean()-Z
* fBodyAccJerk-std()-X
* fBodyAccJerk-std()-Y
* fBodyAccJerk-std()-Z
* fBodyGyro-mean()-X
* fBodyGyro-mean()-Y
* fBodyGyro-mean()-Z
* fBodyGyro-std()-X
* fBodyGyro-std()-Y
* fBodyGyro-std()-Z
* fBodyAccMag-mean()
* fBodyAccMag-std()
* fBodyBodyAccJerkMag-mean()
* fBodyBodyAccJerkMag-std()
* fBodyBodyGyroMag-mean()
* fBodyBodyGyroMag-std()
* fBodyBodyGyroJerkMag-mean()
* fBodyBodyGyroJerkMag-std()



