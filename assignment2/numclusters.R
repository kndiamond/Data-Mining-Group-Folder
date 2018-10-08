#find K for K-means + K-medoids using elbow method
dat<-read.csv(file="file.csv",header=FALSE,sep=",")
#compute total within-cluster sum of square for k 2-18
wcs<-(nrow(dat)-1)*sum(apply(dat,2,var))
  for (i in 2:20) wcs[i] <- sum(kmeans(dat,centers=i)$withinss)
#plot 
plot(1:20, wcs, type="b", xlab = "# of Clusters", ylab = "Sum")

#finding the elbow is a human job
  