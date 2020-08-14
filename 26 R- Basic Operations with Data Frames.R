# In this lesson we will learn some basic operations with Data Frames
stats[1:10,]
stats[c(4,100),]
# Remember how [] work
stats[1,]
is.data.frame(stats[1,])
stats[,1]
is.data.frame(stats[,1])
stats[,1,drop=F]

# Multiplying and adding columns
stats$Birth.rate * stats$Internet.users
stats$Birth.rate + stats$Internet.users  # Work as per usual

# Adding new column to data frame
stats$MyNonsense <- stats$Birth.rate * stats$Internet.users
head(stats)  # Now MyNonsense has become the newest column in stats

# Testing My Knowledge
stats$fku <- 1:5   # Works as there are 5 numbers which is a factor of 195 (just continuously repeated)
stats$fkher <- 1:4 # Will not work as there are only 4 numbers (not a factor of 195)
head(stats) # Only fku has been added to the data frame

# Removing Columns from data frame
stats$MyNonsense <- NULL
stats$fku <- NULL
head(stats)  # By nulling both- the latest two columns have been removed from the data frame
