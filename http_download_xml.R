library(XML)
fileURL="http://www.w3schools.com/xml/simple.xml"
doc=xmlTreeParse(fileURL,useInternal=T)
rootNode=xmlRoot(doc)
xmlName(rootNode)

names(rootNode)

rootNode[[1]]
rootNode[[1]][[1]]

xmlSApply(rootNode,xmlValue)

xpathSApply(rootNode,"//name", xmlValue)

xpathSApply(rootNode,"//price", xmlValue)

datedownloaded=date()
datedownloaded