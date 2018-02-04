This repository contains all files, necessary to complete "Getting and Cleaning Data" course project.

1. tidy.txt - a data set generated within this project as result of data collected from the accelerometers from the Samsung Galaxy S smartphone getting, merging and cleaning
2. run_analysis.R - scripts file contains preparations and all five steps of data set creation
3. CodeBook.md - contains descriptions of all processes and objects in code (variables, data, transformations) of run_analysis.R

`run_analysis.R` file is an R script file containing scripts to create tidy.txt by completing each step of:

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.


### PREPARATIONS
script starts with the `PREPARATIONS` section where it downloads the source data zip file, extracts it and reads all data into appropriate variables

### 1. Step
Scripts in this part merges the training and the test sets to create one data set

### 2. Step
Scripts in this part extracts only the measurements on the mean and standard deviation for each measurement

### 3. Step
Scripts in this part uses descriptive activity names to name the activities in the data set

### 4. Step
Scripts in this part appropriately labels the data set with descriptive variable names

### 5. Step
Scripts in this part creates a second, independent tidy data set with the average of each variable for each activity and each subject and saves into the tidy.txt file