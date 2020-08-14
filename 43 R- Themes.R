# In this lesson we will be learning how to use themes
# Using data from 34 R

# We basically use themes to make all the 'extra' stuff beautiful- axis label, title, legend etc

# We start of by labelling our title and x/y axis
p <- ggplot(data = stats)
q <- p + geom_point(alpha = I(0.5), aes(x= CriticRating, y=AudienceRating, color = Genre, size = BudgetMillions))
q + 
  xlab('Critic Rating') + ylab('Audience Rating') +
  ggtitle("Movie Ratings")

# ggtitle to add title and xlab/ylab to add axis labels
# Now for everything else themes related we use theme():
?theme   # Can do almost anything- quite powerful

# We will now change the font sizes and colors and the font itself
q + 
  xlab('Critic Rating') + ylab('Audience Rating') +
  ggtitle("Movie Ratings") +
  theme(
    plot.title = element_text(color = 'DarkBlue', size = 30),
    axis.title = element_text(color = 'Blue', size = 15)
  )

# Can basically change the look of anything- just ?theme if need help
# Use element_text to change things to do with texts