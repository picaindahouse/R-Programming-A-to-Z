# In this lesson we will learn how to merge dataframes
# In the next lesson we will use qplot to create a graph using the following variables:
# 1) Internet Users 2) Birth Rate 3) Region the Country is in
# Thus we really just need to add the region in mydf to stats
# This is also true coz both sets of data already have country and code
# Using stats from 23 and mydf from 30

# To merge two data frames- they need to have at least one common data- in this case we have code and country
# Let's use code to merge the two dataframes together

# Simply use merge(data 1, data 2, by.x = "Similar column from data 1", by.y = "Similar column from data 2")
newdata <- merge(stats, mydf, by.x = "Country.Code", by.y = "Code")
head(newdata)
# You will realise that since we are using code as the common point- it does not duplicate
# However, country does duplicate, thus we have to remove one of the country columns
newdata$Country <- NULL
# Now we have a new data with 6 columns
head(newdata)
