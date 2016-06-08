add2 <- function(x,y) {
  x + y # returns value of last expression
}

add2(3,5)


above10 <- function(x) {
  use <- x > 10
  x[use]
}


# default argument value
above <- function(x, n = 10) {
  x[x>n]
}


# column mean
columnmean <- function(y, removeNA = TRUE) {
  nc <- ncol(y)
  means <- numeric(nc)
  
  for(i in 1:nc) {
    means[i] = mean(y[,i], na.rm = removeNA)
  }
  
  return(means)
}

columnmean(matrix(1:4,2,2), rem = FALSE) # partially matched name of removeNA argument



# Lazy evaluation
f <- function(a,b) {
  a^2
}

f(2)  # does not need b argument (b is never evaluated)


# Variable number of arguments

myplot <- function(x, y, type="1", ...) {
  plot(x,y, type= type, ...)  # all plot arguments preserved
}

args(paste) # concatenates strings
args(cat) # concatenats and prints

# partial matching does not work for args after ...
# args have to be named explicitly