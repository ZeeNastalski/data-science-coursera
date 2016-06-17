
rankall <- function(outcome, num = "best") {
    
    outcomes <- list("heart attack" = 11, "heart failure" = 17, "pneumonia" = 23)
    
    # import everything as strings (R will not create factors)
    data <- read.csv("outcome-of-care-measures.csv", colClasses = "character")
    
    if(! outcome %in% names(outcomes))
    {
        stop("invalid outcome")
    }
    
    outcomeCol <- outcomes[[outcome]]
    
    data[, outcomeCol] <- suppressWarnings(as.numeric(data[, outcomeCol]))
    
    states <- split(data, data$State)
    
    df <- data.frame()
    
    lapply(states, function(d) {
        idx <- order(d[[outcomeCol]], d$Hospital.Name, na.last = NA)
        d <- d[idx, c(2, 7) ]
        
        if(num == "best")
        {
            df <<- rbind(df, d[1,])
        } 
        else if (num == "worst")
        {
            df <<- rbind(df, d[nrow(d),])
        }
        else
        {
            row <- d[num, ]
            row$State = d[1, "State"]
            
            df <<- rbind(df, row)
        }
    })
    
    colnames(df) <- c("hospital", "state")
    rownames(df) <- df$state
    return(df)
    
}

rankhospital <- function(state, outcome, num = "best") {
    
    rank <- rankall(outcome, num)
    return(rank[state, "hospital"])
    
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

head(rankall("heart attack", 20), 10)
tail(rankall("pneumonia", "worst"), 3)
tail(rankall("heart failure"), 10)


