if(!file.exists("data")){dir.create("data")}
fileURL="https://data.baltimorecity.gov/api/views/dz54-2aru/rows.csv?accessType=DOWNLOAD"
destfile="./data/cameras.csv"
download.file(fileURL, destfile, method="curl")
list.files("./data")

datedownloaded=date()
datedownloaded