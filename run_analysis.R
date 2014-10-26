#Jacob Goren
#File for run_analysis.R for the Courser Data Science get data andcleaning class
#10-26-2014 


install.packages("reshape2")
require("reshape2")

#Get the features that are needed
features <- read.table("features.txt")[,2]
#Get all features that are using mean or standard deviation
meanStdFeatures <- grep("mean|std", features)

#Get activity columns
activityLabels <- read.table("activity_labels.txt")[,2]


#Get the X and Y test sets
X_test <- read.csv("test/X_test.txt", sep="", header=FALSE)
y_test <- read.csv("test/y_test.txt", sep="", header=FALSE)


#Get the X and Y train sets
X_train <- read.csv("train/X_train.txt", sep="", header=FALSE)
y_train <- read.csv("train/y_train.txt", sep="", header=FALSE)

#Set the names of the X features
names(X_test) = features
names(X_train) = features

#Get subject scripts
subject_test <- read.table("test/subject_test.txt")
subject_train <- read.table("train/subject_train.txt")
names(subject_test) = c("Subject");
names(subject_train) = c("Subject");

y_test[,2] = activityLabels[y_test[,1]]
names(y_test) = c("activityID", "activityLabel")
y_train[,2] = activityLabels[y_train[,1]]
names(y_train) = c("activityID", "activityLabel")


# Extract only the measurements we want
X_train = X_train[,meanStdFeatures]
X_test = X_test[,meanStdFeatures]


#Merge 
test_data <- cbind( subject_test,y_test, X_test)
train_data <- cbind( subject_train, y_train, X_train)


# Merge test and train data
data = rbind(test_data, train_data)


id_labels   = c("Subject", "activityID", "activityLabel")
data_labels = setdiff(colnames(data), id_labels)
melt_data      = melt(data, id = id_labels, measure.vars = data_labels)


# DCAST function to Apply mean function
tidy_data   = dcast(melt_data, Subject + activityLabel ~ variable, mean)

#Write the tidy data out to a file
write.table(tidy_data, file = "./my_tidy_data.txt",row.names=FALSE)
