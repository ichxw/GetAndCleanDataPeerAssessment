library(reshape2)


#Part 1: merges the training and the test sets to create one data set
mergeData <- function(){
        # read the test files
        x_test <- read.table("./getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/test/X_test.txt")
        y_test <- read.table("./getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/test/y_test.txt")
        subject_test <- read.table("./getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/test/subject_test.txt")
        # column join to merge into a test data frame
        test_data <- cbind(subject_test, y_test, x_test)
        
        # read the train files
        x_train <- read.table("./getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/train/X_train.txt")
        y_train <- read.table("./getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/train/y_train.txt")
        subject_train <- read.table("./getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/train/subject_train.txt")
        # column join to merge into a train data frame
        train_data <- cbind(subject_train, y_train, x_train)
        
        # row join to merge the train data and the test data
        merged_data <- rbind(train_data, test_data)
        
        # read the features.text
        features <- read.table("./getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/features.txt")
        # assgin the feature names 
        features_name <- c("subject", "activityCode", as.vector(features[,2]))
        colnames(merged_data) <- features_name
        return(merged_data)
}

# Part2: Extracts only the measurements on the mean and standard deviation for each measurement
extractData <- function(rawData = data.frame()){
        logical_vector <- grep("^[t|f][a-zA-Z]+\\-(mean|std)\\(\\)(\\-[XYZ])?$", colnames(rawData))
        extracted_data <- rawData[,logical_vector]
        extracted_data <- cbind(subject=rawData$subject, activityCode=rawData$activityCode, extracted_data)
        return(extracted_data)
}

# Part3: Uses descriptive activity names to name the activities in the data set
mapActivityName <- function(rawData = data.frame()){
        activity_labels <- read.table("./getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/activity_labels.txt")
        colnames(activity_labels) <- c("activityID", "activity")
        activity_factor <- factor(activity_labels$activityID, labels=activity_labels$activity)
        activity_type <- factor(rawData$activityCode, labels=activity_factor)
        newData <- cbind(subject = rawData[,1], activity = activity_type, rawData[, 3:ncol(rawData)] )
        return(newData)
}

# Part4: Appropriately labels the data set with descriptive activity names
changeNames <- function(rawData = data.frame()){
        # remove () and -
        names <- colnames(rawData)       
        colnames(rawData) <- gsub("[\\(\\)|\\-]", "", names)
        # change mean to Mean, more readable
        names <- colnames(rawData)
        colnames(rawData) <- gsub("mean", "Mean", names)
        # change std to Std, more readable
        names <- colnames(rawData)
        colnames(rawData) <- gsub("std", "Std", names)
        # remove duplicate Body in names
        names <- colnames(rawData)
        colnames(rawData) <- gsub("BodyBody", "Body", names)
        return(rawData)
}

# Part5: Creates a second, independent tidy data set with the average of each variable for each activity and each subject
reshapeData <- function(rawData = data.frame()){ 
        names <- colnames(rawData)
        meltData <- melt(rawData, id=names[1:2], measure.vars=names[3:68])
        newData <- dcast(meltData, subject + activity ~ variable, mean)
        return(newData)
}

rawData1 <- mergeData()
extractData2 <- extractData(rawData1)
mapData3 <- mapActivityName(extractData2)
tidyData4 <- changeNames(mapData3)
reshapedData5 <- reshapeData(tidyData4)

file.create("tidyData.text")
write.table(tidyData4, file="tidyData.text", sep="\t", quote=FALSE, row.names=FALSE)

file.create("reshapedData.text")
write.table(reshapedData5, file="reshapedData.text", sep="\t", quote=FALSE, row.names=FALSE)