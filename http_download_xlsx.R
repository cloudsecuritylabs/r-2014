if(!file.exists("data")){dir.create("data")}
fileURL="https://data.baltimorecity.gov/api/views/dz54-2aru/rows.xlsx?accessType=DOWNLOAD"
destfile="./data/cameras.xlsx"
download.file(fileURL, destfile, method="curl")
list.files("./data")

datedownloaded=date()
datedownloaded