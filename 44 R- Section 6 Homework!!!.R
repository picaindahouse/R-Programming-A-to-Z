setwd("C:\\Users\\utkar\\Desktop\\UNI PREP\\Programming\\R\\R Programming A to Z")
getwd()
movies <- read.csv("Section6-Homework-Data.csv")
head(movies)
colnames(movies) <- c('ReleaseDay', 'Director', 'Genre', 'Title', 
                      'ReleaseDate', 'Studio', 'AdjustedGross', 
                      'Budget', 'Gross', 'Imdb', 'MovieLens', 
                      'Overseas', 'OverseasPercent', 'Profit', 
                      'ProfitPercent', 'Runtime', 'US', 'USPercent')

colnames(movies)
movies
library(ggplot2)
g <- ggplot(data = movies,   # 1
            aes(x = Genre, y = USPercent)) # 2
e <- g + geom_point(aes(color = Studio, size = Budget)) + geom_boxplot(alpha = I(0.5)) + # 3 & 4
  coord_cartesian(xlim = c(1,5)) # 6
e

# Have to change the studios- filter out all studios that have less than 60 movies
movies1 <- movies[movies$Studio %in% names(which(table(movies$Studio) > 60)), ]
# The above is a random way to filter I found online- the correct method is to just type them out one by one
# Like this: filt2 <- (movies$Studio == "Buena Vista Studios") | (movies$Studio =="WB") | (movies$Studio == "Fox") | (movies$Studio == "Universal") | (movies$Studio == "Sony") | (movies$Studio == "Paramount Pictures")

a <- ggplot(data = movies1,   # 1
            aes(x = Genre, y = USPercent)) # 2
b <- a + geom_jitter(aes(color = Studio, size = Budget)) + geom_boxplot(alpha = I(0.7)) + # 3 & 4
  xlim(Genre = 'action', 'adventure','animation','comedy','drama') # 6
b
# Add theme
b + xlab('Genre') + ylab('Gross % US') + ggtitle('Domestic Gross % by Genre') +
  theme(axis.title = element_text(color= 'Blue'))
# Can add sizes if I want