# In this lesson we will learn how to use facets
# Facets allow you to seperate the data and create multiple graphs
# Will see what I mean below
# Importing Data from 34 R

library(ggplot2)
v <- ggplot(data = stats, aes(x = BudgetMillions))
v + geom_histogram(binwidth = 10, color = 'black', aes(fill = Genre))

# To create multiple graphs with different genres
v + geom_histogram(
  binwidth = 10, color = 'black', aes(fill = Genre)
  ) + facet_grid(Genre~., scales = 'free')
# Usually you add facets like this: facet_grid(rows~columns)
# If you want to leave the column or row empty just use a dot

# Let us now use facets on scatterplots

h <- ggplot(data= stats, aes(x= CriticRating, y = AudienceRating, color= Genre))
h + geom_point()
h + geom_point(alpha = I(0.5))
# Let us add facets to the above
h + geom_point(alpha = I(0.5)
               ) + facet_grid(Genre~.)
# Time to add even more
h + geom_point(alpha = I(0.5)
) + facet_grid(Genre~Year)

# Time to add geom_smooth() to show us the patter:
h + geom_point(alpha = I(0.5)
) + geom_smooth() + facet_grid(Genre~Year) 

# Therefore, we used facets to create multiple grahs depicting the number of movies made in each genre at what cost in which year
# However, our coordinates after using geom_smooth went into the -ves
# Next lesson we learn on how to edit or coordinates.