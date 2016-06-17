str(rnorm) # random number generation
str(dnorm) # density
str(pnorm) # cumulative distribution
str(qnorm) # quantile



srt(rpois)  # poisson
str(rgamma) # gamma
str(rbinom) # binomial distribution


set.seed(1) # for redoprucible random numbers


# Simulate data from linear model

set.seed(20)

x <- rnorm(1000)
e <- rnorm(1000, 0, 2)
y <- 0.5 + 2*x + e
summary(y)
plot(x,y)


# Random sampling

set.seed(1)

sample(1:10, 4) # sample from any set of objects
sample(1:10)    # permutations

sample(1:10, replace = TRUE) # with repeating



