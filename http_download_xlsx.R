if(!file.exists("data")){dir.create("data")}
fileURL="https://data.baltimorecity.gov/api/views/dz54-2aru/rows.xlsx?accessType=DOWNLOAD"
destfile="./data/cameras.xlsx"
download.file(fileURL, destfile, method="curl")
list.files("./data")

datedownloaded=date()
datedownloaded


fileURL2="https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FDATA.gov_NGAP.xlsx "
destfile="./data/2.xlsx"
download.file(fileURL2, destfile, method="curl")
library(xlsx)
