
# We will use geom_smooth to see trends that are harder to see
?geom_smooth

library(ggplot2)
u <- ggplot(data= stats, aes(x= CriticRating, y= AudienceRating, color = Genre))
u + geom_point() + geom_smooth()
# Very messy- use fill= na to make it cleaner
u + geom_point() + geom_smooth(fill= NA)
# Can now see a trend that would have been harder to seen before