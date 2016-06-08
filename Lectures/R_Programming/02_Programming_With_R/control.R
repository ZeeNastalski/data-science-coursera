# 'if' can assign values
y <- if(x>3) {10} else {0}

# for

x <- c("a", "b", "c", "d")
for(i in 1:10) {
  print(x[i])
}


for(i in seq_along(x))
{
  print(x[i]);
}


for(letter in x) print(letter)

# iterating over a matrix using seq_len
x<-matrix(1:6,2,3)

for(i in seq_len(nrow(x))) {
  for(j in seq_len(ncol(x))) {
    print(x[i,j])
  }
}

# skipping using next


for(i in 1:10) {
  if(i==5) { next } 
  else { print(i) }  
}
