#### How to Run a Z-test

library(outliers)

M<-mean(df$data) #Find the mean of the data
SD<-sd(df$data) #Find the standard deviation of the data
Z<-((DP-M)/(sd/sqrt(length(df$data)))) #Assuming DP is the data point you want a z-score for this produces a Z-score
Y<-c(df$data, DP) #Creates a list of all the data so you can run a test in R

scores(Y, type = 'z', prob = 0.95) #Runs a Z-test with a 95% confidence interval. 