complete <- function(directory, id = 1:332) {
 
  dataframe <- data.frame() 
  
  for(i in id) {
    name_number <- formatC(i, width = 3, flag = "0")
    filename <- paste(directory, "/", name_number, ".csv", sep = '')
    
    data <- read.csv(filename)
    
    row <- c(i, sum(complete.cases(data)))
    
    dataframe <- rbind(dataframe, row)
  }
  
  
  colnames(dataframe)<- c("id", "nobs")
  dataframe
 
}

#m <- complete("d:/GIT/data-science-coursera/Lectures/R_Programming/02_Programming_With_R/Assignment/rprog-data-specdata/specdata", 30:25)
#m