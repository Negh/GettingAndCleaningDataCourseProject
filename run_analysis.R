# GETTING AND CLEANING DATA - COURSE PROJECT

#--------------------------------------------------------------------------------------------------------------
# Loading the data (the repository "UCI HAR Dataset" extracted from the compressed file is the working directory)
## from the train set
subject_train<-read.table("train/subject_train.txt")
X_train<-read.table("train/X_train.txt")
y_train<-read.table("train/y_train.txt")

## from the test set
subject_test<-read.table("test/subject_test.txt")
X_test<-read.table("test/X_test.txt")
y_test<-read.table("test/y_test.txt")

## loading the features.txt file to name the variables
features<-read.table("features.txt")

## loading the activity_labels.txt file to use descriptive activity names in the dataset
activity_labels<-read.table("activity_labels.txt")
#----------------------------------------------------------------------------------------------------------------



# STEP1
# Merging the training and the test sets to create one data set
## merge of the training set components
merged_set_train<-cbind(subject_train,y_train,X_train)
## merge of the test set components
merged_set_test<-cbind(subject_test,y_test,X_test)
## merge of the training and the test sets
merged_set_complete<-rbind(merged_set_train,merged_set_test)

# STEP4
# Naming the columns of the merged data frame (step 4 but important to subset the data) from the labels in the features.txt file
colnames(merged_set_complete)<-c("subject","activity",as.character(features$V2))

# Removing temporary datasets from the RAM
rm(subject_test,subject_train,X_test,X_train,y_test,y_train,merged_set_test,merged_set_train,features)

# STEP2
# Subsetting the merged dataset to keep only the columns representing the mean and the standard deviation of each measure
subset<-merged_set_complete[,grepl("subject|activity|mean\\(|std\\(",colnames(merged_set_complete))]

# STEP3
# Replacing activity numbers of the activity variable by the corresponding descriptive activity names in the activity_labels.txt file
activity_labels<-as.character(activity_labels$V2)
subset$activity<-sapply(subset$activity,function(x){activity_labels[x]})

# FIRST REQUIRED TIDY DATA SET
tidy_dataset1<-subset
write.table(tidy_dataset1,file="tidy_dataset1.txt",row.name=FALSE)

# Removing temporary datasets from the RAM
rm(merged_set_complete,subset,activity_labels)

# STEP5
# Creating a second tidy data set with the average of each variable for each activity and each subject
## packages required : reshape2
library(reshape2)
## reshape the first tidy data set to identify id variables ("subject" and "activity") and measure variables (the rest)
melt_tidy_dataset<-melt(tidy_dataset1,id=colnames(tidy_dataset1[,1:2]),measure.vars = colnames(tidy_dataset1[,3:68]))
## calculate the mean of the measure variables for each activity and for each subject
tidy_dataset2_temp<-dcast(melt_tidy_dataset, activity + subject ~ variable, mean )
## modify the label of the measure variables to reflect that they represent the average of the measure
colnames(tidy_dataset2_temp)<-c("activity","subject",sapply(colnames(tidy_dataset2_temp[,3:68]),function(x){paste("average of",x)}))

# SECOND REQUIRED TIDY DATA SET
tidy_dataset2<-tidy_dataset2_temp
write.table(tidy_dataset2,file="tidy_dataset2.txt",row.name=FALSE)

# Removing temporary datasets from the RAM
rm(melt_tidy_dataset,tidy_dataset2_temp)
