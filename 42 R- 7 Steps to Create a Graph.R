# As always using data from 34 R
# So usually a proper graph is made using the following 7 steps:
# Data, Aesthetics, Geometries, Statistics, Facets, Coordinates and Themes
# If you have not already realised it- we have already gone through the first 6

h <- ggplot(data= stats,                                             # 1) Data
            aes(x= CriticRating, y = AudienceRating, color= Genre))  # 2) Aesthetics
h + geom_point(alpha = I(0.5)) +                                     # 3) Geometries 
  geom_smooth() +                                                    # 4) Statistics 
  facet_grid(Genre~Year) +                                           # 5) Facets
  coord_cartesian(ylim=c(0,100))                                     # 6) Coordinates

# We will be learn how to use the last step in the last lesson!