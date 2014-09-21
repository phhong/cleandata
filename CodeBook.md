Human Activity Recognition Using Smartphones Dataset
=========

### Subject
        Data type: integer
        Subject who performed the activity for each window sample
        1..30 Unique identifier assigned to subjects

### Activity
        Data type: factor
        Activity name
        1 WALKING
        2 WALKING_UPSTAIRS
        3 WALKING_DOWNSTAIRS
        4 SITTING
        5 STANDING
        6 LAYING
        
## Mean of Measurements

Note: '-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

### tBodyAcc-mean()-XYZ
        Data type: numeric
        Mean of tBodyAcc-mean()-XYZ in original training and test set for each subject and activity pair

### tBodyAcc-std()-XYZ
        Data type: numeric
        Mean of tBodyAcc-std()-XYZ in original training and test set for each subject and activity pair

### tGravityAcc-mean()-XYZ
        Data type: numeric
        Mean of tGravityAcc-mean()-XYZ in original training and test set for each subject and activity pair

### tGravityAcc-std()-XYZ
        Data type: numeric
        Mean of tGravityAcc-std()-XYZ in original training and test set for each subject and activity pair

### tBodyAccJerk-mean()-XYZ
        Data type: numeric
        Mean of tBodyAccJerk-mean()-XYZ in original training and test set for each subject and activity pair
        
### tBodyAccJerk-std()-XYZ
        Data type: numeric
        Mean of tBodyAccJerk-std()-XYZ in original training and test set for each subject and activity pair

### tBodyGyro-mean()-XYZ
        Data type: numeric
        Mean of tBodyGyro-mean()-XYZ in original training and test set for each subject and activity pair
        
### tBodyGyro-std()-XYZ
        Data type: numeric
        Mean of tBodyGyro-std()-XYZ in original training and test set for each subject and activity pair

### tBodyGyroJerk-mean()-XYZ
        Data type: numeric
        Mean of tBodyGyroJerk-mean()-XYZ in original training and test set for each subject and activity pair
        
### tBodyGyroJerk-std()-XYZ
        Data type: numeric
        Mean of tBodyGyroJerk-std()-XYZ in original training and test set for each subject and activity pair

### tBodyAccMag-mean()
        Data type: numeric
        Mean of tBodyAccMag-mean() in original training and test set for each subject and activity pair

### tBodyAccMag-std()
        Data type: numeric
        Mean of tBodyAccMag-std() in original training and test set for each subject and activity pair

### tGravityAccMag-mean()
        Data type: numeric
        Mean of tGravityAccMag-mean() in original training and test set for each subject and activity pair

### tGravityAccMag-std()
        Data type: numeric
        Mean of tGravityAccMag-std() in original training and test set for each subject and activity pair

### tBodyAccJerkMag-mean()
        Data type: numeric
        Mean of tBodyAccJerkMag-mean() in original training and test set for each subject and activity pair

### tBodyAccJerkMag-std()
        Data type: numeric
        Mean of tBodyAccJerkMag-std() in original training and test set for each subject and activity pair

### tBodyGyroMag-mean()
        Data type: numeric
        Mean of tBodyGyroMag-mean() in original training and test set for each subject and activity pair

### tBodyGyroMag-std()
        Data type: numeric
        Mean of tBodyGyroMag-std() in original training and test set for each subject and activity pair

### tBodyGyroJerkMag-mean()
        Data type: numeric
        Mean of tBodyGyroJerkMag-mean() in original training and test set for each subject and activity pair

### tBodyGyroJerkMag-std()
        Data type: numeric
        Mean of tBodyGyroJerkMag-std() in original training and test set for each subject and activity pair

### fBodyAcc-mean()-XYZ
        Data type: numeric
        Mean of fBodyAcc-mean()-XYZ in original training and test set for each subject and activity pair

### fBodyAcc-std()-XYZ
        Data type: numeric
        Mean of fBodyAcc-std()-XYZ in original training and test set for each subject and activity pair

### fBodyAccJerk-mean()-XYZ
        Data type: numeric
        Mean of fBodyAccJerk-mean()-XYZ in original training and test set for each subject and activity pair

### fBodyAccJerk-std()-XYZ
        Data type: numeric
        Mean of fBodyAccJerk-std()-XYZ in original training and test set for each subject and activity pair

### fBodyGyro-mean()-XYZ
        Data type: numeric
        Mean of fBodyGyro-mean()-XYZ in original training and test set for each subject and activity pair

### fBodyGyro-std()-XYZ
        Data type: numeric
        Mean of fBodyGyro-std()-XYZ in original training and test set for each subject and activity pair

### fBodyAccMag-mean()
        Data type: numeric
        Mean of fBodyAccMag-mean() in original training and test set for each subject and activity pair

### fBodyAccMag-std()
        Data type: numeric
        Mean of fBodyAccMag-std() in original training and test set for each subject and activity pair

### fBodyAccJerkMag-mean()
        Data type: numeric
        Mean of fBodyAccJerkMag-mean() in original training and test set for each subject and activity pair

### fBodyAccJerkMag-std()
        Data type: numeric
        Mean of fBodyAccJerkMag-std() in original training and test set for each subject and activity pair

### fBodyGyroMag-mean()
        Data type: numeric
        Mean of fBodyGyroMag-mean() in original training and test set for each subject and activity pair

### fBodyGyroMag-std()
        Data type: numeric
        Mean of fBodyGyroMag-std() in original training and test set for each subject and activity pair

### fBodyGyroJerkMag-mean()
        Data type: numeric
        Mean of fBodyGyroJerkMag-mean() in original training and test set for each subject and activity pair

### fBodyGyroJerkMag-std()
        Data type: numeric
        Mean of fBodyGyroJerkMag-std() in original training and test set for each subject and activity pair


## Original training and test set

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation
mad(): Median absolute deviation 
max(): Largest value in array
min(): Smallest value in array
sma(): Signal magnitude area
energy(): Energy measure. Sum of the squares divided by the number of values. 
iqr(): Interquartile range 
entropy(): Signal entropy
arCoeff(): Autorregresion coefficients with Burg order equal to 4
correlation(): correlation coefficient between two signals
maxInds(): index of the frequency component with largest magnitude
meanFreq(): Weighted average of the frequency components to obtain a mean frequency
skewness(): skewness of the frequency domain signal 
kurtosis(): kurtosis of the frequency domain signal 
bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean
