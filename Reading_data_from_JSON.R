library(jsonlite)

myjson=toJSON(iris, pretty=T)
cat(myjson)

iris2=fromJSON(myjson)
head(iris2)


jsonDATA=fromJSON("https://api.github.com/users/hydrogeologist/repos")
names(jsonDATA)
datedownloaded=date()
datedownloaded