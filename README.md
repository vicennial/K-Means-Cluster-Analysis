# WORK IN PROGRESS

# K-Means-Cluster-Analysis
A simple program which performs K-Means clustering on a data set and visualizes the results.    

# Usage
Set number of max iterations(max_iter) in the file main.m.    
Run main.m and enter 'K' value to begin the clustering.    
The program will plot the results.

# Features
* Plots Initial Data.
* Calculates optimal K-Mean centres corresponding to local minimum and plots the location.
* Plots each cluster with a characteristic random colour.

# Issues/To-Do
* ~~Program currently works properly only on the original data set. Will have to genralize the format.~~ **UPD:** Data loading has been  generalized.Now loads from data.mat file which must contain a Nx2 matrix named 'X'. 
* Program partly displays unrequired data when number of clusters is higher than required. Will have to think of a fix.

# Disclaimer
This is a personal project meant to test my understanding and implementation of the K-means algorithm for cluster analysis. This project is intended for educational purposes only.  
I do not plan to completely generalize this program and hence you can expect this to fail on new/large/extreme conditions.
