#Code Book

All the variables used for the "run_analysis.R" script are explained below:

dir: the user defined "absolute path" or the location of the downloaded and unzziped UCIHAR dataset file.
ans, ans2: used defined answers for installing or not 'dplyr' package.
test: table containing all the measurments from the test set, or the subjects selected for generating test data.
train: the same as 'test' but for the training set.
lab_test: the coded activities performed for every subject in the test set
lab_train: the same as 'lab_test', but for the training set.
sub_test: the coded observation subjects used for the test set.
sub_train: the same as 'sub_test', but for the training set.
features: all the measurments collected for test and training set.
activity: all the activities performed and collected for the test and training set, with their respective label (code).
data: test and training observations merged in an unique dataframe.
data2: processed dataframe, including only mean and std (standard deviation) values for all measurments.
act_subj: grouped processed data (data2), according to every subject and the activities performed.
tid: outcome tidy dataframe with average values of the mean and std of every measurment grouped by subject and activity.

