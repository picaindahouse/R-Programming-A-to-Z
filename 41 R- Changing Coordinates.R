# In this lesson we will learn ahow to 'zoom into' our graphs
# Basically, decide what coordinates of our graph we are looking at
# Using data from 34 R

# Aim is to change the coordinates of the below graph to (0 to 100)
h <- ggplot(data= stats, aes(x= CriticRating, y = AudienceRating, color= Genre))
h + geom_point(alpha = I(0.5)) + 
  geom_smooth() + facet_grid(Genre~Year) 

# Let us use a scatterplot to learn first
r <- ggplot(data <- stats, aes(x = CriticRating, y = AudienceRating, color= Genre))
r + geom_point() + xlim(0,50)
# Above we changed our usual scatter plot for CriticRating from (0 to 100) to (0 to 50)
# Can do the same to y-axis with y-lim

# However, x and y lim do not zoom but rather remove 
# We want to zoom in, thus we use coord_cartesian()
r + geom_point() + coord_cartesian(xlim=c(0,50))

# Basically use coord_cartesian to zoom in
# Now we can zoom into our original graph and have the y-axis be from 0 to 100
h + geom_point(alpha = I(0.5)) + 
  geom_smooth() + facet_grid(Genre~Year) + coord_cartesian(ylim=c(0,100))

# Thats how you change your coordinates- either by removing or by zooming