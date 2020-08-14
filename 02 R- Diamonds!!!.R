# This is just to show the power of R and its application
# Say  you have a data set for Diamonds- their clarity, price and Carat
# Logic states that the clearer it is and the heavier it is the more expensive a diamond should be
# Is that true?
my_data <- read.csv(file.choose())  # This downloads the data set (in the same folder)

install.packages("ggplot2") # Already did

# To use ggplot2- Just tick the box under packages

# The graph is price against carat with the clarity being depicted by colour
# Hopefully, I will also be able to do something like this by the end of the course

ggplot(data=my_data[my_data$carat<2.5,], aes(x=carat,y=price, colour=clarity)) + geom_point(alpha=0.1) + geom_smooth()

# Clean Up:
detach("package:ggplot2", unload = TRUE)

# Clear plots
dev.off()  # But only if there IS a plot

# Clear console
cat("\014")  # ctrl+L 
       