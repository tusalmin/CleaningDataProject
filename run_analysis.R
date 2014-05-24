## Getting and Cleaning Data course project

run_analysis <- function() {
        ##Load train data
        Raw_data_train <- read.table("train/X_train.txt",stringsAsFactors=FALSE)
        Column_names <- read.table("features.txt",stringsAsFactors=FALSE)
        Column_names <- Column_names[,2]
        colnames(Raw_data_train) <- c(as.character(Column_names))
        
        ## Import the subject and labels data to temporary data.frames and then add them to the raw_data
        temp_labels <- read.table("train/Y_train.txt",stringsAsFactors=FALSE)
        Raw_data_train$labels <- temp_labels[,1]
        temp_subject <- read.table("train/subject_train.txt",stringsAsFactors=FALSE)
        Raw_data_train$subject <- temp_subject[,1]
        ##Add column "type" with the value "train" to keep track that this is train data
        Raw_data_train$type <- "train"
                
        ## Load test data
        Raw_data_test <- read.table("test/X_test.txt",stringsAsFactors=FALSE)
        colnames(Raw_data_test) <- c(as.character(Column_names))
        
        ## Import the subject and labels data to temporary data.frames and then add them to the raw_data
        temp_labels <- read.table("test/Y_test.txt",stringsAsFactors=FALSE)
        Raw_data_test$labels <-temp_labels[,1]
        temp_subject <- read.table("test/subject_test.txt",stringsAsFactors=FALSE)
        Raw_data_test$subject <- temp_subject[,1]
        ##Add column "type" with the value "test" to keep track that this is test data
        Raw_data_test$type <- "test"
        
        ## Combine the train and test data into single data.frame
        Raw_data <- rbind(Raw_data_train, Raw_data_test)
        
        rm(Raw_data_test)
        rm(Raw_data_train)
        
        ## Phase two: Extracts only the measurements on the mean and standard deviation for each measurement. 
        Means_data <-Raw_data[,grepl("(?i)*Mean*",colnames(Raw_data)) | grepl("(?i)*std*",colnames(Raw_data)) | grepl("labels",colnames(Raw_data)) | grepl("type",colnames(Raw_data)) | grepl("subject",colnames(Raw_data))]
        
        ##Phase three: Uses descriptive activity names to name the activities in the data set
        activity_names <- read.table("activity_labels.txt",stringsAsFactors=FALSE)
        
        for(i in seq_along(activity_names[,1])){
                Means_data$labels[Means_data$labels==activity_names[i,1]] <- activity_names[i,2]        
        }
        
        ## Phase four : Appropriately labels the data set with descriptive activity names. 
        ##colnames(Means_data) <- gsub("^t", "Time ", colnames(Means_data))
        ##colnames(Means_data) <- gsub("^f", "Frequency ", colnames(Means_data))
        colnames(Means_data) <- gsub("Acc", " Acceleration ", colnames(Means_data))
        colnames(Means_data) <- gsub("Gyro", " Gyroscope ", colnames(Means_data))
        
        
        
        ## Phase five: Creates a second, independent tidy data set with the average of each variable for each activity and each subject.
        ## Make a new data set, aggregate by activity labels and subjects. Remove labels, subject and type columns from the end
        tidy_means <- aggregate(Means_data[,1:(length(colnames(Means_data))-3)], list(activity=Means_data$labels, subject=Means_data$subject), mean)
        
        ##head(tidy_means) ##for debugging
        ##Write the tidied 'final' data that has been averaged for each activity and subject
        write.table(tidy_means, "Sorted Mean Values.txt")
        
        ##Alternatively write the merged and reformatted data
        ##write.table(Means_data, "Tidied data.txt")
        
}