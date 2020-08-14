# Visualising qplot 2
# Using stats from 23 and mydf from 30 to create newdata in 31

# First create a graph of Internet Users against Birth Rate with a third variable of Region

head(newdata)
library(ggplot2)  # Activate ggplot2
# Below we create a simple graph with three variable
qplot(data=newdata, x= Birth.rate, y= Internet.users, color = Region)
# Can see that africa tends to have high birth rate but low internet users 
# While europe is the opposite

# Learn more ways to visualise qplot

# 1) Shapes
# Again shapes can be used for a variable, thus need to use I for all points to be of one shape
# Shapes are given a number (can search online for r shapes)
qplot(data=newdata, x= Birth.rate, y= Internet.users, color = Region, shape= I(4))

# 2) Transparency
# Can add transparency using alpha (from 0 to 1)
qplot(data=newdata, x= Birth.rate, y= Internet.users, color = Region, shape= I(4), alpha=I(0.7))

# 3) Title
# Can add a title using main
qplot(data=newdata, x= Birth.rate, y= Internet.users, color = Region, shape = I(4), alpha=I(0.7), 
      main = "Internet Users vs Birth Rate")

# Now we have a decent graph with a title, shape and transparency