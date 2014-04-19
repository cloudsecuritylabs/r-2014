datedownloaded=date()
datedownloaded

if(!file.exists("data")){dir.create("data")}
fileURL="https://data.baltimorecity.gov/api/views/dz54-2aru/rows.csv?accessType=DOWNLOAD"
destfile="./data/cameras.csv"
download.file(fileURL, destfile, method="curl")
list.files("./data")


fileURL2="https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv"
destfile="./data/surveydata.csv"
download.file(fileURL2, destfile, method="curl")
list.files("./data")
surv.data=read.csv("./data/surveydata.csv", sep=",", header=T)
head(surv.data)
names(surv.data)
summary(surv.data)
x=surv.data["VAL"]
#How many housing units in this survey were worth more than $1,000,000? 
table(x)

y=surv.data["FES"]
table(y)


