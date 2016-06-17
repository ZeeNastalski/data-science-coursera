setwd("D:/GIT/data-science-coursera/Lectures/R_Programming/04_Simulation/assignment")

dir()

# import everything as strings (R will not create factors)
outcome <- read.csv("outcome-of-care-measures.csv", colClasses = "character")

ncol(outcome) # bymber of columns
names(outcome)


# convert the 11th column to be numeric and produce hostogram

class(outcome[,11])
# [1] "character"
outcome[, 11] <- as.numeric(outcome[, 11])

class(outcome[,11])
# [1] "numeric"


hist(outcome[, 11])














hospital <- read.csv("hospital-data.csv")
