stuff<-read.csv(file="f.txt",header=FALSE,sep=",")
stuff<-na.omit(stuff)
stuff<-scale(stuff)
write.table(stuff, file = "f.csv",row.names=FALSE, na="",col.names=FALSE, sep=",")
