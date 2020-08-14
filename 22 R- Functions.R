# In this lesson we will be learning about Functions in R
# Works around the same way as in Python
# name_of_function <- function(variable){the function itself}

# Let us use the basic x ** 2 function from python

square <- function(x){x ** 2}
square(4)
square(15)

# Let us create a function more in Line with R
# Using data from s4-BasketballData

# This function takes the name of a player and year
# And returns the number of minutes played by the player
# on average in that year

Avg_min_pergame <- function(name, year){
  MinutesPlayed[name,year]/Games[name,year]
}
Avg_min_pergame('KobeBryant','2005')

# Nice

# The following is a function that returns a matrix
# It takes in a name and returns the stats of the player over a period of time
player_stats <- function(name){
  tom <- rbind(Games[name,], FieldGoals[name,],FieldGoalAttempts[name,],MinutesPlayed[name,], Points[name,], Salary[name,])
  rownames(tom) <- c('Games', 'Field Goals', 'Field Goal Attempts', 'Minutes Played', 'Points', 'Salary')
  tom}
player_stats('KobeBryant')

# Nice

# The way a function works is that if there is no value to return at the end of 
# the code then it returns the last value
# Thus manipulate this fact as you deem fit

