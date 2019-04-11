Tidy Data Set Description

The Tidy Data Set constains 180 rows and 82 columns. Each row has averaged variables for each subject and activity.

Data Set Information:

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

Attribute Information:

For each record in the dataset it is provided: 
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration. 
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

Information on Run_Analysis R-Script:

The objective of this project was to come up with a r-scriptthat will produce a new data set that is easy to understand. The code was written based on the instruction of this assignment: 
1. Merges the training and the test sets to create one data set. 
    This was done by merging the text following text files and assigning them to AllInOne:
        - 'features_info.txt': Shows information about the variables used on the feature              vector.
        - 'features.txt': List of all features.
        - 'activity_labels.txt': Links the class labels with their activity name.
        - 'train/X_train.txt': Training set.
        - 'train/y_train.txt': Training labels.
        - 'test/X_test.txt': Test set.
        - 'test/y_test.txt': Test labels.
2.Extracts only the measurements on the mean and standard deviation for each measurement.
        measurements:
        mean() -- mean (Average)
        std() -- standard deviation
          This was extracted by using the grep() command wherein it selects the columns             where 'mean' and 'std' where present.
3. Uses descriptive activity names to name the activities in the data set Convert activity labels to characters and add a new column as factor. 
        Activities in the data:
        1. WALKING
        2. WALKING_UPSTAIRS
        3. WALKING_DOWNSTAIRS
        4. SITTING
        5. STANDING
        6. LAYING
        This was done by using the gsub() command wherein it commands the script to select         a literal and substitute with the clean and fixed variable for the column names.
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
        The aggregate function was used to collate and aggregate all rows by subject and          activity. This was assigned to the TidyData variable.
Source:

Jorge L. Reyes-Ortiz(1,2), Davide Anguita(1), Alessandro Ghio(1), Luca Oneto(1) and Xavier Parra(2)
1 - Smartlab - Non-Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova, Genoa (I-16145), Italy. 
2 - CETpD - Technical Research Centre for Dependency Care and Autonomous Living
Universitat Politècnica de Catalunya (BarcelonaTech). Vilanova i la Geltrú (08800), Spain
activityrecognition '@' smartlab.ws

