run_analysis <- function(){
  #first some prerequisites to stablish the conection and install 'dplyr' package
  dir <- readline("Please refer to the location path of the downloaded and unziped UCIHAR dataset:
    ")
  setwd(dir)
    ans <- readline("It is necessary 'dplyr' package to run this function, did you already installed it? (y/n) :
    ")
      if (ans == "n") {
            ans2 <-readline ("Would you like to install it now? (y/n):
            ")
            if (ans2 == "y") {install.packages("dplyr") ; 
                print("Please call again 'run_analysis()'")}
                else if (ans2 == "n") {print("Sorry, this function cannot run without 'dplyr'package")}
      }
    else if (ans == "y"){ print("processing data...");
    library(dplyr)
    
    #First every data is read into R
    #for test
    test <- read.table("./test/X_test.txt") #data from test
    lab_test <- read.table("./test/y_test.txt"); lab_test <- lab_test$V1 #labels from test
    sub_test <- read.table("./test/subject_test.txt"); sub_test <- sub_test$V1 #subjects from test
    #for train
    train <- read.table("./train/X_train.txt") #data from test
    lab_train <- read.table("./train/y_train.txt"); lab_train <- lab_train$V1#labels from test
    sub_train <- read.table("./train/subject_train.txt"); sub_train <- sub_train$V1#subjects from test
    #for features and activities
    features <- read.table("./features.txt"); features <- features$V2
    activity <- read.table('./activity_labels.txt')
    
    #Now, lets proccess the data:
    data <- rbind.data.frame(test, train) #first merge them in a unique database
    colnames(data) <- features #name the columns by their names
    data2 <- data[,c(grep("mean",names(data)),grep("std",names(data)))] 
    #subset the data with only sdt and mean values
    subject <- c(sub_test,sub_train); label <- c(lab_test,lab_train)
    data2$subject <- subject; data2$label <- label
    #adding subject and label data into the subset data (data2)
    data2$label <- factor(data2$label, levels= activity$V1, labels= activity$V2)
    # link the kind of activity with its specific label
  
    #Lastly the subset data is grouped by subject and label
    act_subj<- group_by(data2, subject, label) #grouping data
    tid <- summarise_each(act_subj, funs(mean))
    #Building a new tidy independent data (tid) with the means of all columns
    #of the subset data (data2) grouped by subject and label activity
    print(tid)
  }
}
