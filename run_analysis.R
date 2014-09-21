## Read data from training set and combine subject and activities with measurements
train<-read.table("./UCI HAR Dataset/train/X_train.txt")
y<-read.table("./UCI HAR Dataset/train/y_train.txt")
subject<-read.table("./UCI HAR Dataset/train/subject_train.txt")
train<-cbind(subject,y,train)

## Read data from test set and combine subject and activities with measurements
test<-read.table("./UCI HAR Dataset/test/X_test.txt")
y<-read.table("./UCI HAR Dataset/test/y_test.txt")
subject<-read.table("./UCI HAR Dataset/test/subject_test.txt")
test<-cbind(subject,y,test)

## Combine training and test set
train_test<-rbind(train,test)

## Extract mean and sd variables from the merged data set
features<-read.table("./UCI HAR Dataset/features.txt")
mean_std_features<-grepl("mean\\(\\)|std\\(\\)",features[,2])
train_test<-train_test[,mean_std_features]

## Use descriptive activity names to name the activities in the data set
activity_labels<-read.table("./UCI HAR Dataset/activity_labels.txt")
activity_factor<-factor(train_test[,2],labels=activity_labels[,2])
train_test[,2]<-activity_factor

## Set descriptive variable name
mean_std_features_labels<-features[mean_std_features,2]
colnames(train_test)<-c("Subject","Activity",as.character(mean_std_features_labels))

## Create a data set with average of each variable for each activity and each subject.
library(dplyr)
train_test_tbl<-tbl_df(train_test)
by_sub_act<-group_by(train_test_tbl,"Subject","Activity")
sub_act_avg<-summarise_each(by_sub_act,funs(mean))

# Write data to file
write.table(sub_act_avg,file="sub_act_avg.txt",row.name=FALSE)


