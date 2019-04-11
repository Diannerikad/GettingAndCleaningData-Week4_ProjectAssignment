
This repository contains the project for Coursera's Getting and Cleaning Data course. 

It contains four files:
  README.MD - this file, which would provide an overview of the project and other relevant     details.
  tidydata.txt - contains summarized data
  Codebook.MD - describes the content of the data set
  run_analysis.R - R- script used to conduct the analysis
  
The code was written based on the instruction of this assignment
Read training and test dataset into R environment. Read variable names into R envrionment. Read subject index into R environment.

1. Merges the training and the test sets to create one data set. Use command rbind to combine training and test set
2. Extracts only the measurements on the mean and standard deviation for each measurement. Use grep command to get column indexes for variable name contains "mean()" or "std()"
3. Uses descriptive activity names to name the activities in the data set Convert activity labels to characters and add a new column as factor
4. Appropriately labels the data set with descriptive variable names. Give the selected descriptive names to variable columns
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject. Use pipeline command to create a new tidy dataset with command group_by and summarize_each in dplyr package
