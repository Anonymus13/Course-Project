# Data Getting and Cleaning Course Project
#Data Analysis

In this repository you can find the scrip "run_analysis.R" which is aimed to process and transform a complete dataset from Samsung Galaxy S smartphones accelerometers, which and can be downloaded here (https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip). For more information about these data you can follow this link (http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones) and for information related to the script you can check the Codebook.md, attached to this repository.
The "run_analysis.R" script allows to organize these data and create a tidy and independent database which sumarize the mean and the standard deviations of all measurements collected by subject and activity features. These are the steps of the script:
1. Read all necessary data.
2. Process data. Which includes first a merge of test and training data and the creation of a subset data with the mean and standard deviation of every measurment.
3. Summary by group. Which includes grouping the observations by subject and activity analyzed, and gattering the average value for each measurment and every group.


It is important to mention that this scrip does NOT download any information, nor unzip it. Therefore, it is important to do both steps in advanced. There is one single input for this scrip, and it is the directory path of the downloaded and unzip dataset (i.e. "C:\Users\Downloads\UCI HAR Dataset"). As well as requirement it is necessary to install the "dplyr" package to use some of its functions, althougth this can be done during the script interface anyways.

Best Regards,


