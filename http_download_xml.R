library(XML)
fileURL="http://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Frestaurants.xml"
doc=xmlTreeParse(fileURL,useInternal=T)
rootNode=xmlRoot(doc)
xmlName(rootNode)

names(rootNode)

rootNode[[1]]
rootNode[[1]][[1]]

xmlSApply(rootNode,xmlValue)

xpathSApply(rootNode,"//name", xmlValue)

a=xpathSApply(rootNode,"//zipcode", xmlValue)
table(a)

datedownloaded=date()
datedownloaded
