# In this lesson we will learn how to filter a Data Frame
# Using stats from Importing Data (23)

head(stats)
# We will get true and false values for the following statement
stats$Internet.users<2

# Using which we can filter our data frame to only include nations with internet users < 2
filter <- stats$Internet.users<2 
filter
stats[filter,]  

# Now we can do that but without having to create an entirely new variable
# Below, we want nations with birth rate more than 40
stats[stats$Birth.rate>40,]

# We can use & to filter using two different conditions
stats[stats$Birth.rate>40 & stats$Internet.users<2,]

# Finally, the filter does not have to apply only to number based variables
stats[stats$Income.Group == "High income",] # Income group

stats[stats$Country.Name == "Malta",] # Country Name

# So this is how you can filter your data frame
