# We will be learning how to use box plots
# Using stats from chapter 34

u <- ggplot(data=stats, aes(x = Genre, y = CriticRating ,color = Genre))
u + geom_boxplot()            
# Basically we have the genre vs the critic rating
# Where the horizontal lines are the mean critic rating for that genre

# Can add jitter to show where all the points lie

u + geom_boxplot()  + geom_jitter()

# Can put the jitter below the box plot and make the box plot translucent for an even better visual

u  + geom_jitter() + geom_boxplot(alpha = I(0.3)) 

# This is how you can show people what their data means