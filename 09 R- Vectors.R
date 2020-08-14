# A vector is an array like lists are in python- but you can only have the same data type in a vector
# Vector's are indexed starting from 1 in r unlike python where indexing starts from 0.
# You make vectors mainly in three ways- c(), seq(), rep()

# We start with c()- combine

# Below is a double only vector
# double and integer are both considered numeric data type
myfirstvector <- c(3, 45, 56, 732)
myfirstvector
is.numeric(myfirstvector)
is.integer(myfirstvector)
is.double(myfirstvector)

# This is an integer only vector
v2 <- c(3L, 43L, 234L)
is.numeric(v2)
is.integer(v2)

# This is a character only vector
v3 <- c('I', 'hate', 'this')
v3
is.character(v3)

# Cannot have different data types in one vector
v4 <- c(34, 45L, 'hello')
v4  # As you can see 34 and 45l have been turned into characters so that the data in the vector are 
# all of the same type


# Now we will look at the functions seq() and rep() which both create vectors
seq() # Sequence- like ':'
rep() # replicate

seq(1,15)
1:15
# Why use seq then?

seq(1,15,2)  # Works
1:15:2       # This does not


# Replicate 3 50 times:
rep(3, 50)

d<- rep(3,50)
is.vector(d)

# Can also replicate vectors:
rep(v2, 50)
# Cool?