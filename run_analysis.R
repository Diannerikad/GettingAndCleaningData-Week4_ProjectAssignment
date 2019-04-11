#Getting and Cleaning Data Week 4 Project Assignment
#download and extract ZIP file
  url <- download.file(url = "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", destfile = "M3.zip")
  unzip(zipfile="M3.zip",exdir=getwd())
#set file path
  path <- file.path("./M3", "UCI HAR Dataset")
    list.files(path, recursive = TRUE)
  test <- file.path(path, "test") 
  train <- file.path (path, "train")
#read files
  #train set
  xtrain <- read.table(file.path(train, "X_train.txt"), header = FALSE)
  ytrain <- read.table(file.path(train, "Y_train.txt"), header = FALSE)
  sub_train <- read.table(file.path(train, "subject_train.txt"), header = FALSE)
  #test set
  xtest <- read.table(file.path(test, "X_test.txt"), header = FALSE)
  ytest <- read.table(file.path(test, "Y_test.txt"), header = FALSE)
  sub_test <- read.table(file.path(test, "subject_test.txt"), header = FALSE)
  #features set
  features <- read.table(file.path(path, "features.txt"), header = FALSE)
  #activity set
  activity <- read.table(file.path(path, "activity_labels.txt"), header = FALSE)
 #fix variable names
  colnames(xtrain) = features[,2]
  colnames(ytrain) = "activityID"
  colnames(sub_train) = "subjectID"
  colnames(xtest) = features[,2]
  colnames(ytest) = "activityID"
  colnames(sub_test) = "subjectID"
  colnames(activity) = c("activityID", "activityType")    
#merge files
  #bind trainsets
  X_set <- rbind(xtrain, xtest) #binding all X sets
  y_set <- rbind(ytrain, ytest) #binding all y sets
  sub_set <- rbind(sub_train, sub_test) #binding all subject sets
#extracting mean and std
  extract_mean <- X_set[grep("mean", names(X_set))]
  extract_std <- X_set[grep("std", names(X_set))]
#combine all sets
  AllInOne <- cbind(extract_mean,extract_std, sub_set, y_set)
  AllInOne <- merge(AllInOne, activity, by = "activityID") 
#aggregate values to create new dataset
  Overall<-aggregate(. ~subjectID + activityType, AllInOne, mean)
  Overall<-Overall[order(Overall$subjectID,Overall$activityType),]
#create text file   
  write.table(Overall, file = "tidydata.txt",row.name=FALSE)

    
