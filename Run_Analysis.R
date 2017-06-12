## Getting and Cleaning Data Course Project##
#############################################

##Read in data files
train_x <- read.table("./train/X_train.txt", colClasses = "numeric")
train_y <- read.table("./train/y_train.txt")
test_x <- read.table("./test/X_test.txt", colClasses = "numeric")
test_y <- read.table("./test/y_test.txt")
subject_train <- read.table("./train/subject_train.txt")
subject_test <- read.table("./test/subject_test.txt")
activity_labels <- read.table("./activity_labels.txt")
features <- read.table("./features.txt")

## re-name variables in each file
names(features) <- c("id", 'feature_desc')
names(activity_labels) <- c("id", "activity_desc")
names(train_x) <- features$feature_desc
names(test_x) <- features$feature_desc
names(train_y) <- "activity"
names(test_y) <- "activity"
names(subject_train) <- "subject_ID"
names(subject_test) <- "subject_ID"


## add subject, activity, and data type (test/train) columns, 
##filter for only mean/stdev variables, and combine train/test data
train <- cbind(subject_train, train_x[,grep("mean[()]|std[()]", names(train_x))], train_y, data_type = "training")
test <- cbind(subject_test, test_x[,grep("mean[()]|std[()]",names(test_x))], test_y, data_type = "test")
tidy_data <- rbind(train, test)

## re-code activity variable to descriptive name instead of number
tidy_data$activity <- sapply(tidy_data$activity, function(x){tidy_data$activity <- activity_labels[x, 2]})

#####################################################
## change variable names to more descriptive names ##
#####################################################

## change all variable characters to lowercase
names(tidy_data) <- tolower(names(tidy_data))

## rename starting t and f characters to time and frequency based
names(tidy_data) <- gsub("^t", "time_based", names(tidy_data))
names(tidy_data) <- gsub("^f", "frequency_based", names(tidy_data))

## change ACC to accleration and Gyro to rotation
names(tidy_data) <- gsub("acc", "_acceleration", names(tidy_data))
names(tidy_data) <- gsub("gyro", "_rotation", names(tidy_data))

## add leading underscores to body, gravity, jerk, and magnitude
names(tidy_data) <- gsub("body", "_body", names(tidy_data))
names(tidy_data) <- gsub("gravity", "_gravity", names(tidy_data))
names(tidy_data) <- gsub("jerk", "_jerk", names(tidy_data))
names(tidy_data) <- gsub("mag", "_magnitude", names(tidy_data))

## remove parentheses from mean and std and add leading underscore
names(tidy_data) <- gsub("-mean[(][])]", "_mean", names(tidy_data))
names(tidy_data) <- gsub("-std[(][])]", "_stdev", names(tidy_data))

## clean up an extra hyphen
names(tidy_data) <- gsub("-", "_", names(tidy_data))

## clean up duplication of "BodyBody" in variable name from original data
names(tidy_data) <- gsub("body_body", "body", names(tidy_data))

########################################################################
## create second tidy dataset with averages of each variable for each ##
## activity and subject                                               ##
########################################################################
tidy_data2 <- as.data.frame(ddply(tidy_data, c(.(subject_id), .(activity)), numcolwise(mean)))

## export new tidy dataset to csv file
write.csv(tidy_data2, "./tidy_data2.csv", row.names = FALSE)
