pollutantmean <- function(directory, pollutant, id = 1:332) {
  
  dataset <- data.frame()
   
  for(i in id) {
      num <- formatC(i, width=3, flag="0")
      file_name <- paste(directory,"/", num, ".csv", sep='')
   
      x <- read.csv(file_name);
      
      dataset <- rbind(dataset, x)
  }
  
  dataset
  
  mean(dataset[, pollutant], na.rm = T)
  
}




#m <- pollutantmean("d:/GIT/data-science-coursera/Lectures/R_Programming/02_Programming_With_R/Assignment/rprog-data-specdata/specdata", "nitrate")
#m