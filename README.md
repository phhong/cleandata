Getting and Cleaning Data Course Project
=========
This document describes the how the R script run_analysis works to get the result data set. 

## Merges the training and the test sets

### Read and combine training data
* Read training set
* Read training labels which represents activities
* Read subjects who did the activities in training set
* Combine the three data set to yield a training data set contains subjects, activities and measurements

```{r}
train<-read.table("./UCI HAR Dataset/train/X_train.txt")
y<-read.table("./UCI HAR Dataset/train/y_train.txt")
subject<-read.table("./UCI HAR Dataset/train/subject_train.txt")
train<-cbind(subject,y,train)
```

### Read and combine test data
* Read test set
* Read test labels which represents activities
* Read subjects who did the activities in test set
* Combine the three data set to yield a test data set contains subjects, activities and measurements

```{r}
test<-read.table("./UCI HAR Dataset/test/X_test.txt")
y<-read.table("./UCI HAR Dataset/test/y_test.txt")
subject<-read.table("./UCI HAR Dataset/test/subject_test.txt")
test<-cbind(subject,y,test)
```

### Combine training set with test set
Use row bind to merge training and test sets
```{r}
train_test<-rbind(train,test)
```

## Extracts mean and standard deviation measurements
* Read feature.txt 
* Select the features whose name contain "mean()" or "std()"
* Extract the columns based the selected features

```{r}
features<-read.table("./UCI HAR Dataset/features.txt")
mean_std_features<-grepl("mean\\(\\)|std\\(\\)",features[,2])
train_test<-train_test[,mean_std_features]
```

## Use descriptive activity names to name the activities in the data set
* Read activity_labels.txt
* Create a factor vector for the second column of the data set which is the activity variable and assign labels to the factor
* Replace the second column with the factor vector

```{r}
activity_labels<-read.table("./UCI HAR Dataset/activity_labels.txt")
activity_factor<-factor(train_test[,2],labels=activity_labels[,2])
train_test[,2]<-activity_factor
```
## Set descriptive variable name
* Extract the feature label vector from the features data frame
* Assign the column name. The first column name is "Subject" and the second is "Activity". The others are the feature labels

```{r}
mean_std_features_labels<-features[mean_std_features,2]
colnames(train_test)<-c("Subject","Activity",as.character(mean_std_features_labels))
```

## Create a data set with average of each variable for each activity and each subject
In this step, I use dplyr library.
* Create groups on "Subject" and "Activity" features
* Use summarise_each to compute mean on each mean and standard deviation measurements

```{r}
by_sub_act<-group_by(train_test_tbl,"Subject","Activity")
sub_act_avg<-summarise_each(by_sub_act,funs(mean))
```
## Write data set to file
Last, write the result data set to a file

```{r}
write.table(sub_act_avg,file="sub_act_avg.txt",row.name=FALSE)
```

## Read data set
To view the data set, download the result txt file and put it in the working directory.
Use the following R code

```{r}
data<-read.table("sub_act_avg.txt",head=TRUE)
View(data)
```


