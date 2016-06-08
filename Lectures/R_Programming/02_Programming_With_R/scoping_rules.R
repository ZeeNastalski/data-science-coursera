# Environments
search()

# library() call puts package on position 2

# Lexical Scoping Power

make.power <- function(n){
  pow <- function(x) {
    x^n
  }
  
  pow
}

cube <- make.power(3)
square <- make.power(2)
cube(3)
square(3)

ls( environment(cube) )
# [1] "n"   "pow"

get("n", environment(cube))
# [1] 3



# Lexical vs Dynamic Scoping
y <- 10

f <- function(x) {
  y <- 2
  y^2 + g(x)
}

g <- function(x) {
  x*y
}

f(3) # 34 in lexical scoping. Value of y is looked up in environment in which it was defined.

# R uses lexical scoping