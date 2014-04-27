#####################################################################################################
# This script (run_analysis.R) does the following:
# 1- Merges the training and the test sets to create one data set.
# 2- Extracts only the measurements on the mean and standard deviation for each measurement. 
# 3- Uses descriptive activity names to name the activities in the data set
# 4- Appropriately labels the data set with descriptive activity names. 
# 5- Creates a second, independent tidy data set with the average of each variable for each activity 
#    and each subject. 

library(plyr)

getFilePath <- function(filename, dataPath = "data/UCI HAR Dataset/") {
    paste(dataPath, filename, sep="")
}

zipFileName = "getdata-projectfiles-UCI-HAR-Dataset.zip"

# Download the original data set
if(!file.exists("./data")) {
    dir.create("./data")
    if(!file.exists(paste("data/", zipFileName, sep=""))) {
        fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
        destfile <- zipFileName
        download.file(fileUrl, destfile=paste("data", destfile, sep="/"), method="curl")
        unzip(paste("data", destfile, sep="/"), exdir="data")
        data_dir <- setdiff(dir("data"), destfile)
        dateDownloaded <- date()
    }
}

dataPath <- "data/UCI HAR Dataset/"



# read the subject indicators
subj.train <- read.table(file=getFilePath("train/Subject_train.txt"), col.names="subject")
subj.test <- read.table(file=getFilePath("test/Subject_test.txt"), col.names="subject")

# add a column that denotes the type of data set
subj.train <- cbind(rep("train", nrow(subj.train)), subj.train)
names(subj.train)[1] <- "dataSet"
subj.test <- cbind(rep("test", nrow(subj.test)), subj.test)
names(subj.test)[1] <- "dataSet"

# read the list of features. 
features <- read.table(getFilePath("features.txt"))
features <- as.character(features$V2)

# read the feature data
x.train <- read.table(file=getFilePath("train/X_train.txt"), col.names=features, check.names=FALSE)
x.test <- read.table(file=getFilePath("test/X_test.txt"), col.names=features, check.names=FALSE)

# read the activity labels
activityNames <- read.table(getFilePath("activity_labels.txt"), col.names=c("activityId","activity"))

# read the output data
y.train <- read.table(file=getFilePath("train/Y_train.txt"), col.names="activityId")
y.test <- read.table(file=getFilePath("test/Y_test.txt"), col.names="activityId")

# merge the ys with activity labels
y.train.lbl <- merge(y.train, activityNames, by.x="activityId", by.y="activityId", sort=FALSE)
y.test.lbl <- merge(y.test, activityNames, by.x="activityId", by.y="activityId", sort=FALSE)


# merge the train and test data sets for x, y and subjects
x.all <- rbind(x.train, x.test)
y.all <- rbind(y.train.lbl, y.test.lbl)
subj.all <- rbind(subj.train, subj.test)

# find the feature namess that contain the characters '-mean()' or '-std()'
selectedFeatureNames <- grepl("-std\\()", features) | grepl("-mean\\()", features)

# get the selected features of x
x.all.sel <- x.all[, selectedFeatureNames]

# merga all data sets into one set
tidyData <- cbind(subj.all, y.all, x.all.sel)

# write tidy data to a csv file
write.csv(tidyData, file="tidy_data.txt", row.names=FALSE)

# prepare the second data set with averages of variables by subject and activity
# For each subset of tidyData data frame, apply function then combine results into a data frame
tidyDataMeans <- ddply(tidyData, c("subject","activityId", "activity"), function(x){
    sub <- subset(x, select= 5:length(tidyData))
    apply(sub, 2, mean)
})

# write tidy data to a csv file
write.csv(tidyDataMeans, file="tidy_data_average.txt", row.names=FALSE)

