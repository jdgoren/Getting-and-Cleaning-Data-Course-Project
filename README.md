Getting-and-Cleaning-Data-Course-Project
========================================

Executing the script:

1. First make a fork or clone this repository
2. Download the data set from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
and extract. It should result in a UCI HAR Dataset folder with files and directories.
3. Run this R script run_analysis.R in the same folder as you extracted the data.
The tidy dataset should get created in the current directory as my_tidy_data.txt

Assumptions:

1.All columns representing means contain  the string mean in them.
2.All columns representing standard deviations contain  the string std in them.
3. Activity labels are in the file activity_labels.txt.
4. Measurements are present in X_[dataset].txt file
5. The measurements in the datasets match the list of features.


