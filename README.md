
# K-Means-Cluster-Analysis
A simple program which performs K-Means clustering on a data set,visualizes the results and calculates validity metrics.    

# Usage
* Set number of max iterations(max_iter) in the file main.m.    
* Save the data in the file "data.mat". Data must be a N x 2 matrix where each row contains X and Y coordinate
* Run main.m and enter 'K' value to begin the clustering. K must be a positive integer less than or equal to the number of data points.
* The program will plot the results as well as display the values of the validity metrics.  
**Note**: To generate a new random data set of 500 points, run the GetNewData.m file.  

# Features
* Plots Initial Data.
* Calculates optimal K-Mean centres corresponding to local minimum and plots the location.
* Plots each cluster with a characteristic random colour.
* Calculates the following validity metrics:
    * Compactness Value
    * Separation Value
    * Davies Bouldin Index
    * Dunn Validity Index


