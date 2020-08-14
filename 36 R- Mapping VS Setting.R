# Mapping VS Setting
# In this lesson we will learn the difference between mapping and setting
# Usinolorg data from 34 R
library(ggplot2)
head(stats)
r <- ggplot(data= stats, aes(x= CriticRating ,y= AudienceRating))
r + geom_point()

# Mapping- Setting color/size/etc to a variable
# Use aes()
r + geom_point(aes(size = BudgetMillions, color = Genre, alpha= I(0.5)))

# Setting- Setting color/size/etc to an actual value (color/size)
# Don't need to use aes()
r + geom_point(size = 2, color = "blue", alpha = I(0.5))

# As you can see, external stuff like alpha can be added to both
# BTW- alpha is used to make points more transparent
