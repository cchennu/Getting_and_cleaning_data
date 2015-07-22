The R script file run_analysis.R does the following:
* 1.Merges the training and the test sets to create one data set.
* 2. Extracts only the measurements on the mean and standard deviation for each measurement. 
* 3. Uses descriptive activity names to name the activities in the data set
* 4. Appropriately labels the data set with descriptive variable names. 
* 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity

The detailed procedures are as follows:
* 1. First I read the test and train subject files and then merge them together.
* 2. I then changed the column name for the whole subject file.
* 3. I read the test and train X files, merged them together and renamed the column names based on the features.txt file which indicates the feature names.
* 4. I read the test and train Y files, merged them together and renamed the colunm name.
* 5. I extracted only the columns with "mean" or "std" and discarded all the other irrelevant columns.
* 6. I replaced the activity names by words based on the activity_labels.txt file which indicates the correspondence.
* 7. I then calculated the mean corresponding to different subject and activity combinations.
* 8. Finally I output the tidy data file.