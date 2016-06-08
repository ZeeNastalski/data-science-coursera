#### Date
x <- as.Date("1970-01-01")
unclass(x) # 0

x <- as.Date("1970-01-02")
unclass(x) # 1

# Time

x<-Sys.time() #POSIXct
x
# [1] "2016-06-02 10:47:08 AEST"

p <- as.POSIXlt(x)
p
names(unclass(p))
#  [1] "sec"    "min"    "hour"   "mday"   "mon"    "year"   "wday"   "yday"   "isdst"  "zone"  
# [11] "gmtoff"

p$sec
p$wday
p$year


#### Parsing dates

datestring <- c("January 10, 2012 10:40", "December 9, 2011 9:10")
x <- strptime(datestring, "%B %d, %Y %H:%M")
x


#### Date operations
x <- c(as.Date("2014-05-13"), as.Date("2013-05-13"))

y = x[0] - x[1]
y
# Time difference of  secs
class(y)
# [1] "difftime"

