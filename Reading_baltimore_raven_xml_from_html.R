library(XML)
fileURL="http://espn.go.com/nfl/team/_/name/bal/baltimore-ravens"
doc=htmlTreeParse(fileURL,useInternal=T)
scores=xpathSApply(doc,"//li[@class='score']", xmlValue)
scores=xpathSApply(doc,"//li[@class='team-name']", xmlValue)

scores

datedownloaded=date()
datedownloaded