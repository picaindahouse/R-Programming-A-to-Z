# This chapter we learn about Factors
# Basically how we can turn items into factors, where they can benefit us more 

setwd("C:\\Users\\utkar\\Desktop\\UNI PREP\\Programming\\R\\R Programming A to Z")
getwd()
stats <- read.csv("P2-Movie-Ratings.csv")
head(stats)
colnames(stats) <- c("Film", "Genre", "CriticRating", "AudienceRating", "BudgetMillions", "Year")
head(stats)
summary(stats)
# Factors are a way that R uses to categorise items
# For example when you use summary(stats), Genre is categorised as a factor
# This can be seen by how it tells how many of each genre there are in the data frame
# Most of the time we do not need to really care about all this as R does all of this for us
# However, sometimes R fails to recognise something that should actually be a factor
# In the same example above, years is not made a factor since all of its values are numerical
# However, there is little use for Years in the way it is presented as we do not need stuff like median year
# Thus it is more useful to us to turn Year into a factor to find out how many movies are made each year

stats$Year <- factor(stats$Year)
summary(stats)

# Now Year has been turned into a factor