system.time( rnorm(1000000))
# user  system elapsed 
# 0.09    0.02    0.11 

system.time( { 
    for(i in 1:1000)
        print(i)
    
})




# PROFILER

str(Rprof)
str(summaryRprof)


## Not run: Rprof()
## some code to be profiled
Rprof(NULL)
## some code NOT to be profiled
Rprof(append = TRUE)
## some code to be profiled
Rprof(NULL)


## Now post-process the output as described in Details
summaryRprof()

summaryRprof()$by.self    # subtratcts time of calls up the stack (more use)
summaryRprof()$by.total
