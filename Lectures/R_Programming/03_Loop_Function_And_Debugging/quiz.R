library(datasets)
data(iris)

lapply(split(iris, iris$Species), function(d) mean(d$Sepal.Length))


colMeans(iris[iris$Species=="virginica", 1:4])
# Sepal.Length  Sepal.Width  Petal.Length  Petal.Width 
# 6.588         2.974        5.552         2.026 


apply(iris[, 1:4], 2, mean)
# Sepal.Length  Sepal.Width Petal.Length  Petal.Width 
# 5.843333     3.057333     3.758000     1.199333 


library(datasets)
data(mtcars)

sapply(split(mtcars$mpg, mtcars$cyl), mean)
# 4        6        8 
# 26.66364 19.74286 15.10000 

tapply(mtcars$mpg, mtcars$cyl, mean)
# 4        6        8 
# 26.66364 19.74286 15.10000 


with(mtcars, tapply(mpg, cyl, mean))
# 4        6        8 
# 26.66364 19.74286 15.10000 

avgHP <- tapply(mtcars$hp, mtcars$cyl, mean)
avgHP
# 4         6         8 
# 82.63636 122.28571 209.21429 

avgHP[3] - avgHP[1]
# 8 
# 126.5779 