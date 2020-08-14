# Intro to Ggplot
# Using data from 34 R
# Lost my notes on this so just a brief recap:

# Ggplot is basically qplot but with more features

# 1st way to create a graph is below
library(ggplot2)
r <- ggplot(
  data= stats, 
  aes(x= CriticRating ,y= AudienceRating)
  )
r + geom_point()  # Add the type of graph you want

# 2nd way is to add all the aes crap in geom_point()

p <- ggplot(data = stats)
p + geom_point(aes(x= CriticRating, y=AudienceRating))

# Add other variables via color or size as per usual
p + geom_point(aes(x= CriticRating, y=AudienceRating, color = Genre))
p + geom_point(aes(x= CriticRating, y=AudienceRating, color = Genre, size = BudgetMillions))

# Add transparency to make everything nice
p + geom_point(alpha = I(0.5), aes(x= CriticRating, y=AudienceRating, color = Genre, size = BudgetMillions))

# As you can see- I did not place alpha into aes() and thus it was applied to all points
# Will learn more about this in mapping vs setting (36 R)