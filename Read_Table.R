#Reading flat files using read.table
?read.table
camera.data=read.table("./data/cameras.csv", sep=",", header=T)
head(camera.data)