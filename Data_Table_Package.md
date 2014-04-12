Working with Data.Table Package
========================================================
INfo: Written in C, much faster at subsetting


#R's data frame

```r
DF = data.frame(x = rnorm(9), y = rep(c("a", "b", "c"), each = 3), z = rnorm(9))
head(DF, 3)
```

```
##         x y       z
## 1  1.2170 a -0.4503
## 2 -0.8341 a  0.3148
## 3  0.9825 a -0.1835
```



#R's data Table

```r
library(data.table)
DT = data.table(x = rnorm(9), y = rep(c("a", "b", "c"), each = 3), z = rnorm(9))
head(DT, 3)
```

```
##         x y      z
## 1: -1.362 a -1.167
## 2:  1.806 a -0.605
## 3:  0.677 a -1.210
```

```r
tables()
```

```
##      NAME NROW MB COLS  KEY
## [1,] DT      9 1  x,y,z    
## Total: 1MB
```

#Subset Data Table

```r
DT[, c(2, 3)]
```

```
## [1] 2 3
```

