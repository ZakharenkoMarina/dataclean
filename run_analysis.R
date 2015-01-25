#####################################################################
## 1. Merges the training and the test sets to create one data set ##
#####################################################################

dir <- "./getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset"

## Read "test"-files
file <- paste(dir, "/test/subject_test.txt", sep="")
subject_test<-read.table(file, stringsAsFactors=FALSE)

file <- paste(dir, "/test/X_test.txt", sep="")
X_test <- read.table(file, stringsAsFactors=FALSE)

file <- paste(dir, "/test/y_test.txt", sep="")
y_test <- read.table(file, stringsAsFactors=FALSE)

## Read "train"-files
file <- paste(dir, "/train/subject_train.txt", sep="")
subject_train <- read.table(file, stringsAsFactors=FALSE)

file <- paste(dir, "/train/X_train.txt", sep="")
X_train <- read.table(file, stringsAsFactors=FALSE)

file <- paste(dir, "/train/y_train.txt", sep="")
y_train <- read.table(file, stringsAsFactors=FALSE)

## Merge "test" and "train" data sets vertically
subjects <- rbind(subject_test, subject_train)
measurements <- rbind(X_test, X_train)
activities <- rbind(y_test, y_train)

##########################################################################
## 2. Extracts only the measurements on the mean and standard deviation ##
## for each measurement.                                                ##
##########################################################################

## Read "features"-file
file <- paste(dir, "/features.txt", sep="")
features <- read.table(file, stringsAsFactors=FALSE)

## Select values with "mean" and "std"
features <- features[grep("[Mm]ean|[Ss]td", features$V2),]

## Delete redundant characters: - ( ) , 
features$V2 <- gsub("[-(),]", "", features$V2)

## Improve "future" column names
features$V2 <- gsub("BodyBody", "Body", features$V2)
features$V2 <- gsub("^t", "time", features$V2)
features$V2 <- gsub("^f", "freq", features$V2)
features$V2 <- gsub("tB", "timeB", features$V2)

## Select needed columns 
features$V1[] <- paste("V", features$V1[], sep="")
measurements <- measurements[, features$V1[]]

###############################################################
## 3. Uses descriptive activity names to name the activities ##
## in the data set                                           ##
###############################################################

## Read "activity_labels"-file
file <- paste(dir, "/activity_labels.txt", sep="")
activity_labels <- read.table(file, stringsAsFactors=FALSE)

## Replace activity id with activity label
activities[, 1] <- activity_labels[activities[, 1], 2]

##########################################################################
## 4. Appropriately labels the data set with descriptive variable names ##
##########################################################################

names(subjects) <- "subject"
names(measurements) <- features$V2[]
names(activities) <- "activity"

## Merge all data sets horizontally
data_set <- cbind(subjects, activities, measurements)

##############################################################################
## 5. From the data set in step 4, creates a second, independent tidy data  ##
## set with the average of each variable for each activity and each subject ##
##############################################################################

## Use library "data.table"
library(data.table)

## Translate data.frame to data.table
mean_data_set <- data.table(data_set)

## Select names of all variable  
## except first and second columns ("subject" and "activity")
names_for_mean <- tail(names(mean_data_set), -2) 

## Create new data set with
## the average of each variable for each activity and each subject
mean_data_set<-mean_data_set[, lapply(.SD, mean), .SDcols=names_for_mean,
                             by=list(subject, activity)]
## Sorry for my English
