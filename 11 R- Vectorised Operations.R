# R is a vectors based computing system
tom = c(1,2,9,4,5)
tim = c(3,5,6,7,9)
tom + tim  # You don't need to do anything- just add them up
tom > tim

tam = c(3,4,5)

# If one of your vectors has lesser number of data- it will restart your vector
# Eg: tam- c(3,4,5) will become c(3,4,5,3,4) when added to tim
tim + tam

x <- rnorm(5)
x

# Now we will be seeing the difference between a vector based approach and a programming approach

N <- 100
a = rnorm(100)
b = rnorm(100)

# Vectorised Approach- simple to do
c <- a * b

# De-vectorised Approach
d <- c()
for (i in 1:N){
  d[i] <- a[i] * b[i]
}

# d and c will give you the same result- BUT the vectorised approach is easier to write
# And more importantly- the vectorised approach is faster
# If you were to increase N to millions, you will see little to no lag with the first approach
# But there will be a visible lag with the latter approach
# This is because R is a vector based program
