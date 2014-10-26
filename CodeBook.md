CodeBook

This is a code book that describes the data set, and any transformations and process to clean the data.

## The data source
* Original description of the dataset: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
* Original data: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

## Data Set Information

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

## Transformation details

First we combine the test and train data sets into one set.
Next we only keep the measurements that are SD or Mean functions.
Next we attach the names of the activities to the data set
We then update the neede labels 
We finish by creating an tidy data set called my_data_set from average of each variable for each activity and each subject.


## The data for the experiment


"features_info.txt" -> Shows information about the variables used on the feature vector.

"features.txt" -> List of all features.

"activity_labels.txt" -> Links the class labels with their activity name.

"train/X_train.txt" -> Training set.

"train/y_train.txt" -> Training labels.

"test/X_test.txt" -> Test set.

"test/y_test.txt" -> Test labels.


## How it works:

1. Load both test and train data
2. Load the features and activity labels.
3. Extract the mean and standard deviation column names and data.
4. Process the data. There are two parts processing test and train data respectively.
5. Merge data set.
