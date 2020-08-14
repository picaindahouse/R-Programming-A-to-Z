# In this lesson we will be learning how to use $
# Using the imported data from 2 chapters ago

stats
# Instead of using [] we can use $ to get the specific set of data that we want
# Only works for data frames, will not work with matrices
stats$Country.Name
# Same as
stats[,"Country.Name"]

# Can enter in rows to get really specific data
stats$Country.Code[3]
