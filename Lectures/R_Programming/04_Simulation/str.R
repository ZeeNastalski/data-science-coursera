
# STR sunction (structure), alternative to summary()
?str



x <- rnorm(100, 2,4)
str(x)
# num [1:100] 2.151 4.168 2.681 6.423 -0.967 ...

summary(x)
#Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
#-7.321  -1.833   2.105   1.735   4.328  11.930 

library(datasets)
data("airquality")
str(airquality)