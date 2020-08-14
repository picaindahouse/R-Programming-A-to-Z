# Using s4- Basketball Data:
# This lesson we will learning abit on how to play around with matrix

Games
rownames(Games)
colnames(Games)
Games['KobeBryant','2005']  # By naming your rows and columns
# You make it easier to get the data you want
# Like above you clearly want the number of games Kobe played in 2005


# We can divide Matrix with matrix to get insight 
FieldGoals

FieldGoals/Games
round(FieldGoals/Games,1)  # Gives you field goals per game

MinutesPlayed/Games
round(MinutesPlayed/Games)  # Gives you minutes played per game
