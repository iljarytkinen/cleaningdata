###### PREPARATIONS: #####################################################################################################################


# loading necessary library 
library(dplyr)

# downloading zipped data
url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
zip_name <- "UCI HAR Dataset.zip"
if (!file.exists(zip_name)) {download.file(url, zip_name, mode = "wb")}

# unzipping downloaded data
data_name <- "UCI HAR Dataset"
if (!file.exists(data_name)) {unzip(zip_name)}

# reading train data
train_subject <- read.table(file.path(data_name, "train", "subject_train.txt"))
train_x <- read.table(file.path(data_name, "train", "X_train.txt"))
train_y <- read.table(file.path(data_name, "train", "y_train.txt"))

# reading test data
test_subject <- read.table(file.path(data_name, "test", "subject_test.txt"))
test_x <- read.table(file.path(data_name, "test", "X_test.txt"))
test_y <- read.table(file.path(data_name, "test", "y_test.txt"))

# reading features
features <- read.table(file.path(data_name, "features.txt"), as.is = TRUE)

# reading activity labels
activity_labels <- read.table(file.path(data_name, "activity_labels.txt"))
colnames(activity_labels) <- c("activity_id", "activity_label")



###### 1. Merges the training and the test sets to create one data set ###################################################################

# merging train and test data
activity <- rbind(cbind(train_subject, train_x, train_y), cbind(test_subject, test_x, test_y))

# setting column names
colnames(activity) <- c("subject", features[, 2], "activity")



###### 2. Extracts only the measurements on the mean and standard deviation for each measurement #########################################

# getting mean and standard deviation columns only
keep_columns <- grepl("subject|activity|mean|std", colnames(activity))

# keeping mean and standard deviation data only
activity <- activity[, keep_columns]



###### 3. Uses descriptive activity names to name the activities in the data set #########################################################

activity$activity <- factor(activity$activity, levels = activity_labels[, 1], labels = activity_labels[, 2])



###### 4. Appropriately labels the data set with descriptive variable names ##############################################################

# geting column names
activity_columns <- colnames(activity)

# cleaning column special characters
activity_columns <- gsub("[\\(\\)-]", "", activity_columns)

# expanding column abbreviations
activity_columns <-     gsub("^f", "frequencyDomain", 
                        gsub("^t", "timeDomain", 
                        gsub("Acc", "Accelerometer", 
                        gsub("Gyro", "Gyroscope", 
                        gsub("Mag", "Magnitude", 
                        gsub("Freq", "Frequency", 
                        gsub("mean", "Mean", 
                        gsub("std", "StandardDeviation", activity_columns))))))))

# removing duplicate "Body"
activity_columns <- gsub("BodyBody", "Body", activity_columns)

# setting new labels to columns
colnames(activity) <- activity_columns



###### 5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject ###############

# grouping by subject and activity and summarising using mean
activity_means <- activity %>% group_by(subject, activity) %>% summarise_each(funs(mean))

# creating "tidy.txt" file
write.table(activity_means, "tidy.txt", row.names = FALSE, quote = FALSE)