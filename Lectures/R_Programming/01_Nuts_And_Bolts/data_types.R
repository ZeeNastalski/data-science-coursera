v <- 1:20 #sequence
v # prints v

# declaring a vector
x <- c(0.5, 0.6) # c - contatenate

x <- c(T, FALSE)

x <- vector("numeric", 10)
length(x) # returns 10

y <- c(5, F) # R find common denominator and creates vector of numberics

y <- c("a", TRUE) # vector of strings



# explicit coercion

x <- 0:6
class(x)

as.logical(x) # 0 false rest is true

x <- c("a", "b", "c")
as.numeric((x)) # warning and vector of NA


# Lists
x<-list(1, "a", TRUE, 1+4i)
class(x) # "list"
x # list of vectors of different types. List have double brackets


# Matrices
m <- matrix(nrow =2, ncol =3)
dim(m)

attributes(m)

# Matrices are created columnwise
m <- matrix(1:6, nrow =2, ncol =3)

# Matrix from vector

m <- 1:10
dim(m) <- c(2,5)


# Creating matrices by binding rows and column
x <- 1:3
y <- 10:12
cbind(x,y)
rbind(x,y)


# Data Type Factors
x <- factor(c("yes", "no", "yes", "yes"))
attributes(x)

unclass(x) # creates integer vector

x <- factor(c("yes", "yes", "no", "yes", "no"), levels = c("yes", "no")) # setting levels explicitly




# Missing values
x <- c(1, 2, NA, 10, NaN)
is.na(x) # returns logical vector
is.nan(x)


