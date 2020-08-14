# This lesson we will be learning on how to name vectors and matrix

# Naming Vectors
# Let us first make a vector:
tom <- 1:5

# Name
names(tom)  # Gives all the names assigned to the vector
# To assign names simply: 
names(tom) <- c('a','b','c','d','e')
names(tom)
tom
# To get data from the vector, you can now use either the name or its postion:
tom['d']
tom[4]

# What if you don't want your vector to have names anymore?:
names(tom) <- NULL
names(tom)
