# We will be learning how to create and use histograms
# Using stats from chapter 34

library(ggplot2)
# Only need x-axis for histograms
s <- ggplot(data <- stats, aes(x = BudgetMillions))
# Add histogram to create a histogram
s + geom_histogram(binwidth = 10)
# binwidth decides what stuff goes into what bin
# In this scenario, each bin takes in 10 million
# For example the first one takes in movies with a budget of 0-10 mil

# Mapping use color- use fill for coloring the histogram and color for the border
s + geom_histogram(binwidth = 10, color = "black", aes(fill = Genre))


