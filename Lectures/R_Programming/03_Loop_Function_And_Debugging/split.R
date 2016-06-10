# Split
# splits input array into list of arrays according to the factor (always returns a list)

x <- c(rnorm(10), runif(10), rnorm(10,1))
f <- gl(3,10)

split(x,f)

lapply(split(x,f), mean) # same as tapply



# meam temp for rach month (airquality)
library(datasets)
head(airquality)


s <- split(airquality, airquality$Month)
lapply(s, function(d) colMeans( d[, c("Ozone", "Solar.R", "Wind")], na.rm = T))

sapply(s, function(d) colMeans( d[, c("Ozone", "Solar.R", "Wind")], na.rm = T))
#           5         6          7          8         9
# Ozone    23.61538  29.44444  59.115385  59.961538  31.44828
# Solar.R 181.29630 190.16667 216.483871 171.857143 167.43333
# Wind     11.62258  10.26667   8.941935   8.793548  10.18000





# splitting on more than two levels (factor interraction)

x <- rnorm(10)
f1 <- gl(2, 5)
f2 <- gl(5, 2)

f1
# [1] 1 1 1 1 1 2 2 2 2 2
# Levels: 1 2
f2
# [1] 1 1 2 2 3 3 4 4 5 5
# Levels: 1 2 3 4 5

interaction(f1, f2)
# [1] 1.1 1.1 1.2 1.2 1.3 2.3 2.4 2.4 2.5 2.5
# Levels: 1.1 2.1 1.2 2.2 1.3 2.3 1.4 2.4 1.5 2.5

str(split(x, list(f1, f2))) # splits for every factor level - some levels may not have factor value


str(split(x, list(f1, f2), drop = TRUE))

# List of 6
# $ 1.1: num [1:2] -0.957 0.891
# $ 1.2: num [1:2] 0.724 1.363
# $ 1.3: num -1.51
# $ 2.3: num -1.23
# $ 2.4: num [1:2] 0.429 1.431
# $ 2.5: num [1:2] 0.725 -0.791