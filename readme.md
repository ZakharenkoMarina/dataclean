##The project of course "Getting and Cleaning Data"  
##Script run_analysis.R  

###*1. Merges the training and the test sets to create one data set*
`dir - subdirectory of work directory with original data sets`  
`file - name of file for reading`  

*`dir <- "./getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset"`*  

**Read "test"-files**  
`subject_test - vector with id of test-volunteers`  
`X_test - data set with test-measurements`  
`y_test - dataset with test-activities`  

*`file <- paste(dir, "/test/subject_test.txt", sep="")`*  
*`subject_test<-read.table(file, stringsAsFactors=FALSE)`*  

*`file <- paste(dir, "/test/X_test.txt", sep="")`*  
*`X_test <- read.table(file, stringsAsFactors=FALSE)`*  

*`file <- paste(dir, "/test/y_test.txt", sep="")`*  
*`y_test <- read.table(file, stringsAsFactors=FALSE)`*  

**Read "train"-files**  
`subject_train - vector with id of train-volunteers`   
`X_train - data set with train-measurements`  
`y_train - dataset with train-activities`  

*`file <- paste(dir, "/train/subject_train.txt", sep="")`*  
*`subject_train <- read.table(file, stringsAsFactors=FALSE)`*  

*`file <- paste(dir, "/train/X_train.txt", sep="")`*  
*`X_train <- read.table(file, stringsAsFactors=FALSE)`*  

*`file <- paste(dir, "/train/y_train.txt", sep="")`*  
*`y_train <- read.table(file, stringsAsFactors=FALSE)`*  

**Merge "test" and "train" data sets**   
`subjects is subject_test and subject_train`  
`measurements is X_test and X_train`  
`activities is y_test and y_train`  

*`subjects <- rbind(subject_test, subject_train)`*  
*`measurements <- rbind(X_test, X_train)`*  
*`activities <- rbind(y_test, y_train)`*  

`Each data set: subject, measurements and activities has 10299 rows.`  

###*2. Extracts only the measurements on the mean and standard deviation for each measurement*  
**Read "features"-file**  
`features contains complete list of variables that were estimated from signals of the accelerometer and gyroscope:`  
`features$V1 - id of variable`  
`features$V2 - name of variable`  

*`file <- paste(dir, "/features.txt", sep="")`*  
*`features <- read.table(file, stringsAsFactors=FALSE)`*  

**Select values with "mean" and "std"**  
*`features <- features[grep("[Mm]ean|[Ss]td", features$V2),]`*  
`There is 86 rows in  features`
`Value of features$V2 is string containing the substring "mean" or "Mean" or "std" or "Std"`  

**Improve "future column names": values of features$V2**  
`Delete redundant characters: - ( ) ,`  
*`features$V2 <- gsub("[-(),]", "", features$V2)`*  
`Delete double substring "Body"`  
*`features$V2 <- gsub("BodyBody", "Body", features$V2)`*  
`Replace first "t" with "time"`  
*`features$V2 <- gsub("^t", "time", features$V2)`*  
`Replace first "f" with "freq"`    
*`features$V2 <- gsub("^f", "freq", features$V2)`*  
`Replace inner "t" with "time"`  
*`features$V2 <- gsub("tB", "timeB", features$V2)`*  

**Add "V" to id of "future column names" to match the names of columns in data set measurements**  
*`features$V1[] <- paste("V", features$V1[], sep="")`*  
`It becomes V1,V2,V3,... instead of 1,2,3,... in features$V1`  
`Now features$V1 contains list of variable names of needed columns in measurements`  
 
**Select needed columns in measurements**  
*`measurements <- measurements[, features$V1[]]`*  
`Now measurements has 10299 rows and 86 columns`  

###*3. Uses descriptive activity names to name the activitiesin the data set*            
**Read "activity_labels"-file**  
*`file <- paste(dir, "/activity_labels.txt", sep="")`*  
*`activity_labels <- read.table(file, stringsAsFactors=FALSE)`*  

**Replace activity id with activity label**  
*`activities[, 1] <- activity_labels[activities[, 1], 2]`*  

###*4. Appropriately labels the data set with descriptive variable names*  
**Rename column of subjects: "subject" instead of "V1"**  
*`names(subjects) <- "subject"`*  
**Rename columns of measurements: values of features$V2 instead of V1, v2, V3...**  
*`names(measurements) <- features$V2[]`*  
**Rename column of activities: "activity" instead of "V1"**  
*`names(activities) <- "activity"`*  

**Merge all data sets: subjects, activities, measurements**  
*`data_set <- cbind(subjects, activities, measurements)`*  
`data_set has 10299 rows and 88 columns`  

###*5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject*  
`Use library "data.table"`  
*`library(data.table)`*  

`Translate data.frame to data.table`  
*`mean_data_set <- data.table(data_set)`* 

**Select names of all variable except first and second columns ("subject" and "activity")**  
*`names_for_mean <- tail(names(mean_data_set), -2)`* 

**Create new data set with the average of each variable for each activity and each subject** 
*`mean_data_set<-mean_data_set[, lapply(.SD, mean), .SDcols=names_for_mean,
                             by=list(subject, activity)]`*

`mean_data_set has 180 rows and 88 columns`  

