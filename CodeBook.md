#The project of course "Getting and Cleaning Data"

Data table `mean_data_set` is the project of course "Getting and Cleaning Data".
It is in the file `mean_data_set.txt`.

Raw data to create the table `mean_data_set` were taken from the following publication:
Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz.
Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine.
International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

Raw data set contains data of the experiments with a smartphone (Samsung Galaxy S II).
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years.
Each person performed six activities wearing a smartphone (Samsung Galaxy S II) on the waist.

Data table `mean_data_set` is tidy data set with the average of raw data set variables for each activity
and each volunteer.


The table `mean_data_set` contains eighty eight (88) fields:

1. subject, type "integer", value within [1,30], identifier of the subject who carried out
the experiment
2. activity, type "character", value:
 * WALKING
 * WALKING_UPSTAIRS
 * WALKING_DOWNSTAIRS
 * SITTING
 * STANDING
 * LAYING 

 the kind of six activities performed by each volunteer
3. timeBodyAccmeanX, type "numeric", value within [-1,1], the average of tBodyAcc-mean()-X
4. timeBodyAccmeanY, type "numeric", value within [-1,1], the average of tBodyAcc-mean()-Y
5. timeBodyAccmeanZ, type "numeric", value within [-1,1], the average of tBodyAcc-mean()-Z
6. timeBodyAccstdX, type "numeric", value within [-1,1], the average of tBodyAcc-std()-X
7. timeBodyAccstdY, type "numeric", value within [-1,1], the average of tBodyAcc-std()-Y
8. timeBodyAccstdZ, type "numeric", value within [-1,1], the average of tBodyAcc-std()-Z
9. timeGravityAccmeanX, type "numeric", value within [-1,1], the average of tGravityAcc-mean()-X
10. timeGravityAccmeanY, type "numeric", value within [-1,1], the average of tGravityAcc-mean()-Y
11. timeGravityAccmeanZ, type "numeric", value within [-1,1], the average of tGravityAcc-mean()-Z
12. timeGravityAccstdX, type "numeric", value within [-1,1], the average of tGravityAcc-std()-X
13. timeGravityAccstdY, type "numeric", value within [-1,1], the average of tGravityAcc-std()-Y
14. timeGravityAccstdZ, type "numeric", value within [-1,1], the average of tGravityAcc-std()-Z
15. timeBodyAccJerkmeanX, type "numeric", value within [-1,1], the average of tBodyAccJerk-mean()-X
16. timeBodyAccJerkmeanY, type "numeric", value within [-1,1], the average of tBodyAccJerk-mean()-Y
17. timeBodyAccJerkmeanZ, type "numeric", value within [-1,1], the average of tBodyAccJerk-mean()-Z
18. timeBodyAccJerkstdX, type "numeric", value within [-1,1], the average of tBodyAccJerk-std()-X
19. timeBodyAccJerkstdY, type "numeric", value within [-1,1], the average of tBodyAccJerk-std()-Y
20. timeBodyAccJerkstdZ, type "numeric", value within [-1,1], the average of tBodyAccJerk-std()-Z
21. timeBodyGyromeanX, type "numeric", value within [-1,1], the average of tBodyGyro-mean()-X
22. timeBodyGyromeanY, type "numeric", value within [-1,1], the average of tBodyGyro-mean()-Y
23. timeBodyGyromeanZ, type "numeric", value within [-1,1], the" average of tBodyGyro-mean()-Z
24. timeBodyGyrostdX, type "numeric", value within [-1,1], the average of tBodyGyro-std()-X
25. timeBodyGyrostdY, type "numeric", value within [-1,1], the average of tBodyGyro-std()-Y
26. timeBodyGyrostdZ, type "numeric", value within [-1,1], the average of tBodyGyro-std()-Z
27. timeBodyGyroJerkmeanX, type "numeric", value within [-1,1], the average of tBodyGyroJerk-mean()-X
28. timeBodyGyroJerkmeanY, type "numeric", value within [-1,1], the average of tBodyGyroJerk-mean()-Y
29. timeBodyGyroJerkmeanZ, type "numeric", value within [-1,1], the average of tBodyGyroJerk-mean()-Z
30. timeBodyGyroJerkstdX, type "numeric", value within [-1,1], the average of tBodyGyroJerk-std()-X
31. timeBodyGyroJerkstdY, type "numeric", value within [-1,1], the average of tBodyGyroJerk-std()-Y
32. timeBodyGyroJerkstdZ, type "numeric", value within [-1,1], the average of tBodyGyroJerk-std()-Z
33. timeBodyAccMagmean, type "numeric", value within [-1,1], the average of tBodyAccMag-mean()
34. timeBodyAccMagstd, type "numeric", value within [-1,1], the average of tBodyAccMag-std()
35. timeGravityAccMagmean, type "numeric", value within [-1,1], the average of tGravityAccMag-mean()
36. timeGravityAccMagstd, type "numeric", value within [-1,1], the average of tGravityAccMag-std()
37. timeBodyAccJerkMagmean, type "numeric", value within [-1,1], the average of tBodyAccJerkMag-mean()
38. timeBodyAccJerkMagstd, type "numeric", value within [-1,1], the average of tBodyAccJerkMag-std()
39. timeBodyGyroMagmean, type "numeric", value within [-1,1], the average of tBodyGyroMag-mean()
40. timeBodyGyroMagstd, type "numeric", value within [-1,1], the average of tBodyGyroMag-std()
41. timeBodyGyroJerkMagmean, type "numeric", value within [-1,1], the average of tBodyGyroJerkMag-mean()
42. timeBodyGyroJerkMagstd, type "numeric", value within [-1,1], the average of tBodyGyroJerkMag-std()
43. freqBodyAccmeanX, type "numeric", value within [-1,1], the average of fBodyAcc-mean()-X
44. freqBodyAccmeanY, type "numeric", value within [-1,1], the average of fBodyAcc-mean()-Y
45. freqBodyAccmeanZ, type "numeric", value within [-1,1], the average of fBodyAcc-mean()-Z
46. freqBodyAccstdX, type "numeric", value within [-1,1], the average of fBodyAcc-std()-X
47. freqBodyAccstdY, type "numeric", value within [-1,1], the average of fBodyAcc-std()-Y
48. freqBodyAccstdZ, type "numeric", value within [-1,1], the average of fBodyAcc-std()-Z
49. freqBodyAccmeanFreqX, type "numeric", value within [-1,1], the average of fBodyAcc-meanFreq()-X
50. freqBodyAccmeanFreqY, type "numeric", value within [-1,1], the average of fBodyAcc-meanFreq()-Y
51. freqBodyAccmeanFreqZ, type "numeric", value within [-1,1], the average of fBodyAcc-meanFreq()-Z
52. freqBodyAccJerkmeanX, type "numeric", value within [-1,1], the average of fBodyAccJerk-mean()-X
53. freqBodyAccJerkmeanY, type "numeric", value within [-1,1], the average of fBodyAccJerk-mean()-Y
54. freqBodyAccJerkmeanZ, type "numeric", value within [-1,1], the average of fBodyAccJerk-mean()-Z
55. freqBodyAccJerkstdX, type "numeric", value within [-1,1], the average of fBodyAccJerk-std()-X
56. freqBodyAccJerkstdY, type "numeric", value within [-1,1], the average of fBodyAccJerk-std()-Y
57. freqBodyAccJerkstdZ, type "numeric", value within [-1,1], the average of fBodyAccJerk-std()-Z
58. freqBodyAccJerkmeanFreqX, type "numeric", value within [-1,1], the average of fBodyAccJerk-meanFreq()-X
59. freqBodyAccJerkmeanFreqY, type "numeric", value within [-1,1], the average of fBodyAccJerk-meanFreq()-Y
60. freqBodyAccJerkmeanFreqZ, type "numeric", value within [-1,1], the average of fBodyAccJerk-meanFreq()-Z
61. freqBodyGyromeanX, type "numeric", value within [-1,1], the average of fBodyGyro-mean()-X
62. freqBodyGyromeanY, type "numeric", value within [-1,1], the average of fBodyGyro-mean()-Y
63. freqBodyGyromeanZ, type "numeric", value within [-1,1], the average of fBodyGyro-mean()-Z
64. freqBodyGyrostdX, type "numeric", value within [-1,1], the average of fBodyGyro-std()-X
65. freqBodyGyrostdY, type "numeric", value within [-1,1], the average of fBodyGyro-std()-Y
66. freqBodyGyrostdZ, type "numeric", value within [-1,1], the average of fBodyGyro-std()-Z
67. freqBodyGyromeanFreqX, type "numeric", value within [-1,1], the average of fBodyGyro-meanFreq()-X
68. freqBodyGyromeanFreqY, type "numeric", value within [-1,1], the average of fBodyGyro-meanFreq()-Y
69. freqBodyGyromeanFreqZ, type "numeric", value within [-1,1], the average of fBodyGyro-meanFreq()-Z
70. freqBodyAccMagmean, type "numeric", value within [-1,1], the average of fBodyAccMag-mean()
71. freqBodyAccMagstd, type "numeric", value within [-1,1], the average of fBodyAccMag-std()
72. freqBodyAccMagmeanFreq, type "numeric", value within [-1,1], the average of fBodyAccMag-meanFreq()
73. freqBodyAccJerkMagmean, type "numeric", value within [-1,1], the average of fBodyBodyAccJerkMag-mean()
74. freqBodyAccJerkMagstd, type "numeric", value within [-1,1], the average of fBodyBodyAccJerkMag-std()
75. freqBodyAccJerkMagmeanFreq, type "numeric", value within [-1,1], the average of fBodyBodyAccJerkMag-meanFreq()
76. freqBodyGyroMagmean, type "numeric", value within [-1,1], the average of fBodyBodyGyroMag-mean()
77. freqBodyGyroMagstd, type "numeric", value within [-1,1], the average of fBodyBodyGyroMag-std()
78. freqBodyGyroMagmeanFreq, type "numeric", value within [-1,1], the average of fBodyBodyGyroMag-meanFreq()
79. freqBodyGyroJerkMagmean, type "numeric", value within [-1,1], the average of fBodyBodyGyroJerkMag-mean()
80. freqBodyGyroJerkMagstd, type "numeric", value within [-1,1], the average of fBodyBodyGyroJerkMag-std()
81. freqBodyGyroJerkMagmeanFreq, type "numeric", value within [-1,1],    
    the average of fBodyBodyGyroJerkMag-meanFreq()
82. angletimeBodyAccMeangravity, type "numeric", value within [-1,1],
    the average of angle(tBodyAccMean,gravity)
83. angletimeBodyAccJerkMeangravityMean, type "numeric", value within [-1,1],
    the average of angletBodyAccJerkMean),gravityMean)
84. angletimeBodyGyroMeangravityMean, type "numeric", value within [-1,1],
    the average of angle(tBodyGyroMean,gravityMean)
85. angletimeBodyGyroJerkMeangravityMean, type "numeric", value within [-1,1],
    the average of angle(tBodyGyroJerkMean,gravityMean)
86. angleXgravityMean, type "numeric", value within [-1,1], the average of angle(X,gravityMean)
87. angleYgravityMean, type "numeric", value within [-1,1], the average of angle(Y,gravityMean)
88. angleZgravityMean, type "numeric", value within [-1,1], the average of angle(Z,gravityMean)
