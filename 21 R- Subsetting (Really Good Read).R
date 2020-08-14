# Using s4- Basketball Data
# In this lesson we will be lerning about Subsetting

# In a vector you can subset using another vector as seen below:
tom = c('a','b','c','d','e')
tom[c(1,5)]
tom[3]


# In a matrix you can get specific parts of a matrix by also using vectors as input:
Games
Games[1:3,6:10]  # This gives you the first three playes from 2010 to 2014
Games[c(1,7),]   # This gives two specific players across all the years
# The above ca also be done like this:
Games[c('KobeBryant','ChrisPaul'),]
Games[,c('2008','2009')] # This gives all the players across the years 2008 and 2009

# Impt- Certain subsets of Matrix give you a Vector
# Vector or Matrix
# Before we continue- ensure that I understand what the difference between a matrix and vector is:
# A vector takes in just one variable for each point whereas a matrix will take two different variables

Games[1,]   # This is a vector
Games[3,5]  # This is also a vector

# Despite the above values being subsets of a matrix- the result they give are vector
# This is because when faced with data points that have no need for a second variable
# R automatically removes the second variable
# To prevent this:
 Games[1,,drop = F]
 Games[3,5,drop = F]
 
 # This may not seem impt right now- but should you need to know the name of the player
 # whose data you just took out- you would not be able to see it, if it were a vector
