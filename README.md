The R script file run_analysis.R does the following:
1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

To run the code, simply load the function as well as the raw data file (you may need to change the raw data file path though...).
The script file would finally output a "tidydata.txt" file which contains the tidy data set.