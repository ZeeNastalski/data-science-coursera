
rankall <- function(outcome, num = "best") {
    
}

rankhospital <- function(state, outcome, num = "best") {
    
    outcomes <- list("heart attack" = 11, "heart failure" = 17, "pneumonia" = 23)
    
    # import everything as strings (R will not create factors)
    data <- read.csv("outcome-of-care-measures.csv", colClasses = "character")
    
    # check state and outcome are valid
    if(! state %in% data$State) 
    {
        stop("invalid state")
    }
    
    if(! outcome %in% names(outcomes))
    {
        stop("invalid outcome")
    }
    
    outcomeCol = outcomes[[outcome]]
    
    state <- split(data, data$State)[[state]]
    
    #convert the death rate column to numeric
    state[, outcomeCol] <- as.numeric(state[, outcomeCol])
    
    # sorting by outcome and hospital name
    idx <- order(state[[outcomeCol]], state$Hospital.Name, na.last = NA)
    state <- state[idx, c(2,outcomeCol)]
    
    if(num=="best") 
    {
        return(state[1,1])
    }
    
    if(num=="worst")
    {
        return(state[nrow(state), 1])
    }
    
    return(state[num, 1])
}



best <- function(state, outcome) {
    return(rankhospital(state, outcome))
}





best("TX", "heart attack")
best("TX", "heart failure")
best("MD", "heart attack")
best("MD", "pneumonia")


rankhospital("TX", "heart failure", 4)
rankhospital("MD", "heart attack", "worst")
rankhospital("MN", "heart attack", 5000)
