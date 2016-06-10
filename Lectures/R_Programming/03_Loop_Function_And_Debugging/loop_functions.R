# the return value of lapply is always a list. Names are preserved from input list

x <- list(a = 1:5, b=rnorm(10))
lapply(x, mean)

# $a
# [1] 3

# $b
# [1] -0.05251523

x <- 1:4
lapply(x, runif, min=0, max=10) # passing arguments to runif



# anonymous function
x <- 1:4
lapply(x, function(a) a^2) # returns a list of lists of numerics

sapply(x, function(a) a^2) # returns a vector of value (or matrix)



#### APPLY


M <- matrix(rnorm(200), 20, 10) # 20 rows, 10 columns

apply(M, 1, mean) # applies mean to M[1, ] ... M[20 , ] - to each row
apply(M, 2, mean) # applies mean to M[ ,1] ... M[ , 10] - to each column

# same can be accomplished faster using functions:
# rowSums
# rowMeans
# colSums
# colMeans


# passing arguments to Apply

M <- matrix(rnorm(200), 20, 10)
apply(M, 1, quantile, probs = c(0.25, 0.75)) # returns matrix 20 rows and 2 columns

# we can use apply to more than just one dimension. Following example calculates mean of 3d array
# and the result is 2d matrix

a <- array(rnorm(2*2*10), c(2,2,10))
apply(a, c(1,2), mean)

#### same can be done  with rowMeans
rowMeans(a, dims = 2)



# MAPPLY - can apply function to multiple arrays
a <- 1:4
b <- 4:1

mapply(function(x,y) x+y, a, b) # adding two vectors
# [1] 5 5 5 5



# TAPPLY
# apply through subset of a vector

# gl - generates factors

x <- c(rnorm(10), runif(10), rnorm(10,1))
f <- gl(3, 10)   # three levels repeaded 10 times
tapply(x, f, mean)

