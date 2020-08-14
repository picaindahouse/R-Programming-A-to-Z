# In this lesson we will get an intro to how to use qplot
# qplot is one of the ways to create graphs using ggplot2

library (ggplot2)
?qplot # Quick Plot

# Simply state, what your data frame is
# In this case our data frame is stats
# Since we have already informed what our data frame is, 
# dont need to write stats$Internet.users just write x = Internet.users
qplot(data=stats, x= Internet.users)

# Let us create a simple graph where x = Income.Group and y = Birth.rate
qplot(data=stats, x= Income.Group, y= Birth.rate)

# We can change the size using size
# Often you can use size to associate with another variable, eg: size = Internet.users
# Then the size of point would be in relation to the number of internet users that nation has
# However, if you want to change the size of all points and not equate it to a variable, then use I() as seen below
qplot(data=stats, x= Income.Group, y= Birth.rate, size= I(3))

# Likewise, color can also be used to for variable and if you just want all points to equate to a color then use color = I("red")
qplot(data=stats, x= Income.Group, y= Birth.rate, size = I(3),color =I("blue"))

# While qplot will turn the graph into what it thinks is best for the data type, you can specify what you want
qplot(data=stats, x= Income.Group, y= Birth.rate, geom= "boxplot")


# To clarify- it is possible to have your usual x and y variables but also display variables using color and size
# If you do not want to use color and size as a new variable- use I()
