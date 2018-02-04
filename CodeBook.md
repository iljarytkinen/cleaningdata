# Code Book for "Getting and Cleaning Data" course project

This code book describes data, variables and transformations of the data set saved in `tidy.txt` file.

## DATA 

Format of the `tidy.txt` is space-separated text file with header.

First line of the `tidy.txt` file is header. It contains variable names, listed in `VARIABLES` section. 
All other lines are values of variables in header, each line contains 79 Average (Mean) signal measurements.

## VARIABLES

`subject` - is an integer subject identifier, subject values are from 1 to 30
`activity` - is a factor activity identifier for 6 different subject activity types:
	- `WALKING`
	- `WALKING_UPSTAIRS`
	- `WALKING_DOWNSTAIRS`
	- `SITTING`
	- `STANDING`
	- `LAYING`

### Measurements

Measurements are `float` values.

There are two types of measurements:

Time-domain (variables with `timeDomain` prefix)

Frequency-domain (variables with `frequencyDomain` prefix)

#### Time-domain:

- Body acceleration average (mean) for X,Y,Z dimensions:
	- `timeDomainBodyAccelerometerMeanX`
	- `timeDomainBodyAccelerometerMeanY`
	- `timeDomainBodyAccelerometerMeanZ`

- Body acceleration standard deviation for X,Y,Z dimensions:
	- `timeDomainBodyAccelerometerStandardDeviationX`
	- `timeDomainBodyAccelerometerStandardDeviationY`
	- `timeDomainBodyAccelerometerStandardDeviationZ`

- Gravity acceleration average (mean) for X,Y,Z dimensions:
	- `timeDomainGravityAccelerometerMeanX`
	- `timeDomainGravityAccelerometerMeanY`
	- `timeDomainGravityAccelerometerMeanZ`

- Gravity acceleration standard deviation for X,Y,Z dimensions:
	- `timeDomainGravityAccelerometerStandardDeviationX`
	- `timeDomainGravityAccelerometerStandardDeviationY`
	- `timeDomainGravityAccelerometerStandardDeviationZ`

- Acceleration jerk average (mean) for the X,Y,Z dimensions:
	- `timeDomainBodyAccelerometerJerkMeanX`
	- `timeDomainBodyAccelerometerJerkMeanY`
	- `timeDomainBodyAccelerometerJerkMeanZ`

- Body acceleration jerk standard deviation for X,Y,Z dimensions:
	- `timeDomainBodyAccelerometerJerkStandardDeviationX`
	- `timeDomainBodyAccelerometerJerkStandardDeviationY`
	- `timeDomainBodyAccelerometerJerkStandardDeviationZ`

- Body angular velocity average (mean) for X,Y,Z dimensions:
	- `timeDomainBodyGyroscopeMeanX`
	- `timeDomainBodyGyroscopeMeanY`
	- `timeDomainBodyGyroscopeMeanZ`

- Body angular velocity standard deviation for X,Y,Z dimensions:
	- `timeDomainBodyGyroscopeStandardDeviationX`
	- `timeDomainBodyGyroscopeStandardDeviationY`
	- `timeDomainBodyGyroscopeStandardDeviationZ`

- Body angular velocity jerk average (mean) for X,Y,Z dimensions:
	- `timeDomainBodyGyroscopeJerkMeanX`
	- `timeDomainBodyGyroscopeJerkMeanY`
	- `timeDomainBodyGyroscopeJerkMeanZ`

- Body angular velocity jerk standard deviation for X,Y,Z dimensions:
	- `timeDomainBodyGyroscopeJerkStandardDeviationX`
	- `timeDomainBodyGyroscopeJerkStandardDeviationY`
	- `timeDomainBodyGyroscopeJerkStandardDeviationZ`

- Body acceleration magnitude average (mean) and standard deviation:
	- `timeDomainBodyAccelerometerMagnitudeMean`
	- `timeDomainBodyAccelerometerMagnitudeStandardDeviation`

- Gravity acceleration magnitude average (mean) and standard deviation:
	- `timeDomainGravityAccelerometerMagnitudeMean`
	- `timeDomainGravityAccelerometerMagnitudeStandardDeviation`

- Body acceleration jerk magnitude average (mean) and standard deviation:
	- `timeDomainBodyAccelerometerJerkMagnitudeMean`
	- `timeDomainBodyAccelerometerJerkMagnitudeStandardDeviation`

- Body angular velocity magnitude average (mean) and standard deviation:
	- `timeDomainBodyGyroscopeMagnitudeMean`
	- `timeDomainBodyGyroscopeMagnitudeStandardDeviation`

- Body angular velocity jerk magnitude average (mean) and standard deviation:
	- `timeDomainBodyGyroscopeJerkMagnitudeMean`
	- `timeDomainBodyGyroscopeJerkMagnitudeStandardDeviation`

#### Frequency-domain:

- Body acceleration average (mean) for X,Y,Z dimensions:
	- `frequencyDomainBodyAccelerometerMeanX`
	- `frequencyDomainBodyAccelerometerMeanY`
	- `frequencyDomainBodyAccelerometerMeanZ`

- Body acceleration standard deviation for X,Y,Z dimensions:
	- `frequencyDomainBodyAccelerometerStandardDeviationX`
	- `frequencyDomainBodyAccelerometerStandardDeviationY`
	- `frequencyDomainBodyAccelerometerStandardDeviationZ`

- Body acceleration weighted average for X,Y,Z dimensions:
	- `frequencyDomainBodyAccelerometerMeanFrequencyX`
	- `frequencyDomainBodyAccelerometerMeanFrequencyY`
	- `frequencyDomainBodyAccelerometerMeanFrequencyZ`

- Body acceleration jerk average (mean) for X,Y,Z dimensions:
	- `frequencyDomainBodyAccelerometerJerkMeanX`
	- `frequencyDomainBodyAccelerometerJerkMeanY`
	- `frequencyDomainBodyAccelerometerJerkMeanZ`

- Body acceleration jerk standard deviation for X,Y,Z dimensions:
	- `frequencyDomainBodyAccelerometerJerkStandardDeviationX`
	- `frequencyDomainBodyAccelerometerJerkStandardDeviationY`
	- `frequencyDomainBodyAccelerometerJerkStandardDeviationZ`

- Body acceleration jerk weighted average for X,Y,Z dimensions:
	- `frequencyDomainBodyAccelerometerJerkMeanFrequencyX`
	- `frequencyDomainBodyAccelerometerJerkMeanFrequencyY`
	- `frequencyDomainBodyAccelerometerJerkMeanFrequencyZ`

- Body angular velocity average (mean) for X,Y,Z dimensions:
	- `frequencyDomainBodyGyroscopeMeanX`
	- `frequencyDomainBodyGyroscopeMeanY`
	- `frequencyDomainBodyGyroscopeMeanZ`

- Body angular velocity standard deviation for X,Y,Z dimensions:
	- `frequencyDomainBodyGyroscopeStandardDeviationX`
	- `frequencyDomainBodyGyroscopeStandardDeviationY`
	- `frequencyDomainBodyGyroscopeStandardDeviationZ`

- Body angular velocity weighted average for X,Y,Z dimensions:
	- `frequencyDomainBodyGyroscopeMeanFrequencyX`
	- `frequencyDomainBodyGyroscopeMeanFrequencyY`
	- `frequencyDomainBodyGyroscopeMeanFrequencyZ`

- Body acceleration magnitude average, standard deviation, weighted average:
	- `frequencyDomainBodyAccelerometerMagnitudeMean`
	- `frequencyDomainBodyAccelerometerMagnitudeStandardDeviation`
	- `frequencyDomainBodyAccelerometerMagnitudeMeanFrequency`

- Body acceleration jerk magnitude average, standard deviation, and weighted average:
	- `frequencyDomainBodyAccelerometerJerkMagnitudeMean`
	- `frequencyDomainBodyAccelerometerJerkMagnitudeStandardDeviation`
	- `frequencyDomainBodyAccelerometerJerkMagnitudeMeanFrequency`

- Body angular velocity magnitude average, standard deviation, and weighted average:
	- `frequencyDomainBodyGyroscopeMagnitudeMean`
	- `frequencyDomainBodyGyroscopeMagnitudeStandardDeviation`
	- `frequencyDomainBodyGyroscopeMagnitudeMeanFrequency`

- Body angular velocity jerk magnitude average, standard deviation, weighted average:
	- `frequencyDomainBodyGyroscopeJerkMagnitudeMean`
	- `frequencyDomainBodyGyroscopeJerkMagnitudeStandardDeviation`
	- `frequencyDomainBodyGyroscopeJerkMagnitudeMeanFrequency`
	
## Transformations

1. Script starts with zip file download from: `https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip`
2. Then zip is extracted.
3. Getting extracted data from files
4. Test and train sets are merged into one data set.
5. Left only measurements on the mean and standard deviation. All other measurements skipped.
6. Integer activity identifiers were replaced by descriptive names.
7. Variable names were replaced with descriptive variable names
8. Final data set is created every variable averages for each activity and subject.