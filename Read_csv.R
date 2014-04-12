#Reading flat files using read.table
?read.csv
camera.data.csv=read.csv("./data/cameras.csv", sep=",", header=T)
head(camera.data.csv)