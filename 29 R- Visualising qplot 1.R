# In this lesson we will use what we learnt in the last lesson to complete the following objective:
# Using stats from importing data (23)
# Create a graph where you are able to show the relationship between the following three variables:
# 1) Birth Rate 2) Income Group 3) Internet Users

# We can create a graph with two variables quite easily using x and y
# Most of the time your x and y variables should be your numbered variables thus x and y will be:
# Birth rate and Internet Users

qplot(data= stats, x= Birth.rate, y= Internet.users)

# In the last lesson we discussed how we can use color or size for a third variable
# Let's use color for the income group in this case

qplot(data= stats, x= Birth.rate, y= Internet.users, color= Income.Group)

# Nice now we have successfully visualised three variables using qplot
# But what does this graph show us?

# High income group nations tend to have higher internet users and lower birth rates
# On the other hand low income nations are the opposite
# Whereas, lower middle income and upper middle income are well ard the middle in these case
# This is to be expected but a neat example of how you can use data to see certain things