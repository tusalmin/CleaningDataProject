Codebook for "Tidied_HAR_Mean_data.txt"
Produced by run_analysis.R from the "Human Activity Recognition Using Smartphones Data Set"


The original data set is available at:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

FOR RUNNING INSTRUCTIONS Check the readme.md

Description of the process - What has been done to the data:

1. The train and test data has been combined into a single data frame. 
   (i.e. train/X_train.txt, train/Y_train.txt and features.txt were combined with test/X_test.txt and test/Y_test.txt
   At this point the additional "type" variable is included to preserve information about 
   which data set the information came from: test or train. This way the combined data set can also be extracted by 
   uncommenting the last line in the code.

2. Only data columns that are means or standard deviations of variables are kept and 
   other data columns are discarded.

3. The activity descriptions included in the original data "activity_labels.txt" was used to 
   label the activities with the actual activity names rather than just the numbers.

4. The column names were changed to slightly more readable ones, replacing abbreviations Acc with Acceleration and Gyro with Gyroscope
   The column names start with t or f describing whether the variable is original time-domain measurement (t) or 
   Fourier transformed frequency domain data (f). To keep the labels reasonably short, this convention is preserved from the 
   original data set. The angle variables represent the angle between two other variables (vectors). The angle data is in form 
   "angle(variable1, variable2)".

5. The data was aggregated to represent mean values for each measured variable for each studied subject during each of the activities.
   At this point the origin of the data (test or train) is discarded as the data is basically identical and the original division
   was made at random.
   


THE VARIABLES (88 in total)

t in the beginning means that the variable is a time variable
f in the beginning means that the variable has been Fourier transformed into a frequency variable

 

|    | Variable name                                   |   
|----|-------------------------------------------------|
| 1  | activity                                        | Name of the activity
| 2  | subject                                         | Identifier (number) of the test subject

| 3  | tBody Acceleration -mean()-X                    | Body Acceleration variables denote the estimated acceleration of the test subjects body
| 4  | tBody Acceleration -mean()-Y                    | mean-values in  X, Y and Z directions
| 5  | tBody Acceleration -mean()-Z                    |  
| 6  | tBody Acceleration -std()-X                     | Standard deviations in X, Y and Z directions 
| 7  | tBody Acceleration -std()-Y                     |  
| 8  | tBody Acceleration -std()-Z                     |  

| 9  | tGravity Acceleration -mean()-X                 | Gravity Acceleration denotes the measured gravity in X, Y and Z directions 
| 10 | tGravity Acceleration -mean()-Y                 | mean values 
| 11 | tGravity Acceleration -mean()-Z                 | 
| 12 | tGravity Acceleration -std()-X                  | Standard deviations in X, Y and Z directions 
| 13 | tGravity Acceleration -std()-Y                  | 
| 14 | tGravity Acceleration -std()-Z                  | 

| 15 | tBody Acceleration Jerk-mean()-X                | Body Acceleration Jerk-variables are time derivatives of the respective Body Acceleration data
| 16 | tBody Acceleration Jerk-mean()-Y                | 
| 17 | tBody Acceleration Jerk-mean()-Z                | 
| 18 | tBody Acceleration Jerk-std()-X                 | 
| 19 | tBody Acceleration Jerk-std()-Y                 | 
| 20 | tBody Acceleration Jerk-std()-Z                 | 

| 21 | tBody Gyroscope -mean()-X                       | Body Gyroscope data is the angular velocity data 
| 22 | tBody Gyroscope -mean()-Y                       | 
| 23 | tBody Gyroscope -mean()-Z                       | 
| 24 | tBody Gyroscope -std()-X                        | 
| 25 | tBody Gyroscope -std()-Y                        | 
| 26 | tBody Gyroscope -std()-Z                        | 

| 27 | tBody Gyroscope Jerk-mean()-X                   | Body Gyroscope Jerk-variables are time derivatives of the respective Body Gyroscope data
| 28 | tBody Gyroscope Jerk-mean()-Y                   | 
| 29 | tBody Gyroscope Jerk-mean()-Z                   | 
| 30 | tBody Gyroscope Jerk-std()-X                    | 
| 31 | tBody Gyroscope Jerk-std()-Y                    | 
| 32 | tBody Gyroscope Jerk-std()-Z                    | 

| 33 | tBody Acceleration Mag-mean()                   | Magnitude of Body Acceleration calculated using the Euclidian norm
| 34 | tBody Acceleration Mag-std()                    | 

| 35 | tGravity Acceleration Mag-mean()                | Magnitude of Gravity Acceleration calculated using the Euclidian norm
| 36 | tGravity Acceleration Mag-std()                 | 

| 37 | tBody Acceleration JerkMag-mean()               | Magnitude of Body Acceleration derivatives calculated using the Euclidian norm
| 38 | tBody Acceleration JerkMag-std()                | 

| 39 | tBody Gyroscope Mag-mean()                      | Magnitude of angular velocity calculated using the Euclidian norm
| 40 | tBody Gyroscope Mag-std()                       | 

| 41 | tBody Gyroscope JerkMag-mean()                  | Magnitude of angular velocity derivatives calculated using the Euclidian norm
| 42 | tBody Gyroscope JerkMag-std()                   | 

| 43 | fBody Acceleration -mean()-X                    | Fourier transform of the Body Acceleration variables denote 
| 44 | fBody Acceleration -mean()-Y                    | the estimated acceleration of the test subjects body
| 45 | fBody Acceleration -mean()-Z                    | 
| 46 | fBody Acceleration -std()-X                     | 
| 47 | fBody Acceleration -std()-Y                     | 
| 48 | fBody Acceleration -std()-Z                     | 

| 49 | fBody Acceleration -meanFreq()-X                | Weighted average of the Fourier transformed Body Acceleration data to obtain
| 50 | fBody Acceleration -meanFreq()-Y                | the mean frequency in each direction
| 51 | fBody Acceleration -meanFreq()-Z                | 

| 52 | fBody Acceleration Jerk-mean()-X                | Fourier transform of the Body Acceleration derivatives
| 53 | fBody Acceleration Jerk-mean()-Y                | 
| 54 | fBody Acceleration Jerk-mean()-Z                | 
| 55 | fBody Acceleration Jerk-std()-X                 | 
| 56 | fBody Acceleration Jerk-std()-Y                 | 
| 57 | fBody Acceleration Jerk-std()-Z                 | 

| 58 | fBody Acceleration Jerk-meanFreq()-X            | Weighted average of the Fourier transformed Body Acceleration derivative to obtain 
| 59 | fBody Acceleration Jerk-meanFreq()-Y            | the mean frequency in each direction
| 60 | fBody Acceleration Jerk-meanFreq()-Z            | 

| 61 | fBody Gyroscope -mean()-X                       | Fourier transform of the Body angular velocity data
| 62 | fBody Gyroscope -mean()-Y                       | 
| 63 | fBody Gyroscope -mean()-Z                       | 
| 64 | fBody Gyroscope -std()-X                        | 
| 65 | fBody Gyroscope -std()-Y                        | 
| 66 | fBody Gyroscope -std()-Z                        | 

| 67 | fBody Gyroscope -meanFreq()-X                   | Weighted average of the Fourier transformed Body angular velocity data
| 68 | fBody Gyroscope -meanFreq()-Y                   | to obtain the mean frequencies
| 69 | fBody Gyroscope -meanFreq()-Z                   | 

| 70 | fBody Acceleration Mag-mean()                   | Fourier transformed magnitudes of the Body Acceleration variable
| 71 | fBody Acceleration Mag-std()                    | 
| 72 | fBody Acceleration Mag-meanFreq()               | 

| 73 | fBodyBody Acceleration JerkMag-mean()           | Fourier transformed magnitudes of the Body Acceleration derivatives 
| 74 | fBodyBody Acceleration JerkMag-std()            | 
| 75 | fBodyBody Acceleration JerkMag-meanFreq()       | 

| 76 | fBodyBody Gyroscope Mag-mean()                  | Fourier transformed magnitudes of the Body angular velocity variable
| 77 | fBodyBody Gyroscope Mag-std()                   | 
| 78 | fBodyBody Gyroscope Mag-meanFreq()              | 

| 79 | fBodyBody Gyroscope JerkMag-mean()              | Fourier transformed magnitudes of the Body angular velocity derivatives
| 80 | fBodyBody Gyroscope JerkMag-std()               | 
| 81 | fBodyBody Gyroscope JerkMag-meanFreq()          | 

| 82 | angle(tBody Acceleration Mean,gravity)          | Angle between the variables (vectors) listed in parenthesis
| 83 | angle(tBody Acceleration JerkMean),gravityMean) | 
| 84 | angle(tBody Gyroscope Mean,gravityMean)         | 
| 85 | angle(tBody Gyroscope JerkMean,gravityMean)     | 
| 86 | angle(X,gravityMean)                            | 
| 87 | angle(Y,gravityMean)                            | 
| 88 | angle(Z,gravityMean)                            | 