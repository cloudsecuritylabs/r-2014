fileURL="https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06pid.csv"
destfile="./data/DT.csv"
download.file(fileURL, destfile, method="curl")
library(data.table)
DT=fread("./data/DT.csv")
rowMeans(DT)[DT$SEX==1]; rowMeans(DT)[DT$SEX==2]

a=mean(DT[DT$SEX==1,]$pwgtp15); mean(DT[DT$SEX==2,]$pwgtp15)
system.time(a)
b=mean(DT$pwgtp15,by=DT$SEX)
system.time(b)
c=tapply(DT$pwgtp15,DT$SEX,mean)
system.time(c)
d=DT[,mean(pwgtp15),by=SEX]
system.time(d)
e=sapply(split(DT$pwgtp15,DT$SEX),mean)
system.time(e)
min(c(a,b,c,d,e))