corr <- function(directory, threshold = 0) {
  
  correlations <- vector()
  
  for(i in 1:332) {
    num <- formatC(i, width=3, flag="0")
    
    file_name <- paste(directory,"/", num, ".csv", sep='')
    
    data <- read.csv(file_name)
    
    
    good <- complete.cases(data)
    comp <- data[good, ]
    
    if(nrow(comp) > threshold) {
      
      correl <- cor(comp$sulfate, comp$nitrate)
      correlations <- c(correlations, correl)
    }
    
  }
  
  correlations
}


#m <- corr("d:/GIT/data-science-coursera/Lectures/R_Programming/02_Programming_With_R/Assignment/rprog-data-specdata/specdata", 150)
#m
