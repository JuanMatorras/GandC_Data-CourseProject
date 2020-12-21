Getting and Cleaning Data Course - Course Project

Juan Matorras - 2020/12

Code Boof for "averagesDataSet.txt""

Data

The first row contains the names of the variables and the following rows contain the values for these variables. For each individual and activity the recorded features have been averaged.

Variables

For each given subject and activity, the average for a total of 79 features measured is presented.

Identifiers

subject: integer, ranging from 1 to 30.

activity: string with 6 possible values:
        WALKING: subject was walking
        WALKING UPSTAIRS: subject was walking upstairs
        WALKING DOWNSTAIRS: subject was walking downstairs
        SITTING: subject was sitting
        STANDING: subject was standing
        LAYING: subject was laying

Features measured (average values):

The acceleration signals from the smartphone accelerometer were expressed in standard gravity units 'g' and the gravity was substracted from the total acceleration to obtain the body acceleration.

The angular velocity vector was measured by the gyroscope for each window sample and the units are radians/second.

Features were then normalized and bounded within [-1,1]

The measurements were classified in two domains:

Time-domain signals (features starting with "time"), obtained from the accelerometer and gyroscope data from the cell phones.

Frequency-domain signals (features starting with "frequency"), resulting from the application of a Fast Fourier Transform (FFT) to some of the time-domain signals.

 [1] "timeBodyAccelerometerMeanX"                              
 [2] "timeBodyAccelerometerMeanY"                              
 [3] "timeBodyAccelerometerMeanZ"                              
 [4] "timeBodyAccelerometerStandardDeviationX"                 
 [5] "timeBodyAccelerometerStandardDeviationY"                 
 [6] "timeBodyAccelerometerStandardDeviationZ"                 
 [7] "timeGravityAccelerometerMeanX"                           
 [8] "timeGravityAccelerometerMeanY"                           
 [9] "timeGravityAccelerometerMeanZ"                           
[10] "timeGravityAccelerometerStandardDeviationX"              
[11] "timeGravityAccelerometerStandardDeviationY"              
[12] "timeGravityAccelerometerStandardDeviationZ"              
[13] "timeBodyAccelerometerJerkMeanX"                          
[14] "timeBodyAccelerometerJerkMeanY"                          
[15] "timeBodyAccelerometerJerkMeanZ"                          
[16] "timeBodyAccelerometerJerkStandardDeviationX"             
[17] "timeBodyAccelerometerJerkStandardDeviationY"             
[18] "timeBodyAccelerometerJerkStandardDeviationZ"             
[19] "timeBodyGyroscopeMeanX"                                  
[20] "timeBodyGyroscopeMeanY"                                  
[21] "timeBodyGyroscopeMeanZ"                                  
[22] "timeBodyGyroscopeStandardDeviationX"                     
[23] "timeBodyGyroscopeStandardDeviationY"                     
[24] "timeBodyGyroscopeStandardDeviationZ"                     
[25] "timeBodyGyroscopeJerkMeanX"                              
[26] "timeBodyGyroscopeJerkMeanY"                              
[27] "timeBodyGyroscopeJerkMeanZ"                              
[28] "timeBodyGyroscopeJerkStandardDeviationX"                 
[29] "timeBodyGyroscopeJerkStandardDeviationY"                 
[30] "timeBodyGyroscopeJerkStandardDeviationZ"                 
[31] "timeBodyAccelerometerMagnitudeMean"                      
[32] "timeBodyAccelerometerMagnitudeStandardDeviation"         
[33] "timeGravityAccelerometerMagnitudeMean"                   
[34] "timeGravityAccelerometerMagnitudeStandardDeviation"      
[35] "timeBodyAccelerometerJerkMagnitudeMean"                  
[36] "timeBodyAccelerometerJerkMagnitudeStandardDeviation"     
[37] "timeBodyGyroscopeMagnitudeMean"                          
[38] "timeBodyGyroscopeMagnitudeStandardDeviation"             
[39] "timeBodyGyroscopeJerkMagnitudeMean"                      
[40] "timeBodyGyroscopeJerkMagnitudeStandardDeviation"         
[41] "frequencyBodyAccelerometerMeanX"                         
[42] "frequencyBodyAccelerometerMeanY"                         
[43] "frequencyBodyAccelerometerMeanZ"                         
[44] "frequencyBodyAccelerometerStandardDeviationX"            
[45] "frequencyBodyAccelerometerStandardDeviationY"            
[46] "frequencyBodyAccelerometerStandardDeviationZ"            
[47] "frequencyBodyAccelerometerMeanFrequencyX"                
[48] "frequencyBodyAccelerometerMeanFrequencyY"                
[49] "frequencyBodyAccelerometerMeanFrequencyZ"                
[50] "frequencyBodyAccelerometerJerkMeanX"                     
[51] "frequencyBodyAccelerometerJerkMeanY"                     
[52] "frequencyBodyAccelerometerJerkMeanZ"                     
[53] "frequencyBodyAccelerometerJerkStandardDeviationX"        
[54] "frequencyBodyAccelerometerJerkStandardDeviationY"        
[55] "frequencyBodyAccelerometerJerkStandardDeviationZ"        
[56] "frequencyBodyAccelerometerJerkMeanFrequencyX"            
[57] "frequencyBodyAccelerometerJerkMeanFrequencyY"            
[58] "frequencyBodyAccelerometerJerkMeanFrequencyZ"            
[59] "frequencyBodyGyroscopeMeanX"                             
[60] "frequencyBodyGyroscopeMeanY"                             
[61] "frequencyBodyGyroscopeMeanZ"                             
[62] "frequencyBodyGyroscopeStandardDeviationX"                
[63] "frequencyBodyGyroscopeStandardDeviationY"                
[64] "frequencyBodyGyroscopeStandardDeviationZ"                
[65] "frequencyBodyGyroscopeMeanFrequencyX"                    
[66] "frequencyBodyGyroscopeMeanFrequencyY"                    
[67] "frequencyBodyGyroscopeMeanFrequencyZ"                    
[68] "frequencyBodyAccelerometerMagnitudeMean"                 
[69] "frequencyBodyAccelerometerMagnitudeStandardDeviation"    
[70] "frequencyBodyAccelerometerMagnitudeMeanFrequency"        
[71] "frequencyBodyAccelerometerJerkMagnitudeMean"             
[72] "frequencyBodyAccelerometerJerkMagnitudeStandardDeviation"
[73] "frequencyBodyAccelerometerJerkMagnitudeMeanFrequency"    
[74] "frequencyBodyGyroscopeMagnitudeMean"                     
[75] "frequencyBodyGyroscopeMagnitudeStandardDeviation"        
[76] "frequencyBodyGyroscopeMagnitudeMeanFrequency"            
[77] "frequencyBodyGyroscopeJerkMagnitudeMean"                 
[78] "frequencyBodyGyroscopeJerkMagnitudeStandardDeviation"    
[79] "frequencyBodyGyroscopeJerkMagnitudeMeanFrequency"    

Transformations

The transformations applied to the original data, performed with the script "run_analysis.R", were:

1.- The training and test data on subjects, activities and features was first merged to combine them later in one single data set named "fullDataSet".
2.- The features with values for the mean and standard deviation were selected and the rest discarded.
3.- The activity identifiers (integers between 1 and 6) were replaced with their corresponding descriptive names.
4.- The feature names were changed expanding abbreviations and removing any special characters.
5.- The data was then grouped by subject and activity and the average of the features for each pair of identifiers was obtained.
