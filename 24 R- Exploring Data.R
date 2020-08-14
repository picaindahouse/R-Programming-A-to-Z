# This lesson we will learn a few functions that can be used to explore data
# Using the imported data from the last chapter

stats
# 1- nrow: counts the number of rows 
nrow(stats)

# 2- nrow: counts the number of columns 
ncol(stats)

# 3- head: gives you the head row and the first 6 rows of data 
head(stats)
# If you want there to be more or less than 6 rows, you can specify so by using n
head(stats, n=10)

# 4- tail: gives you the head row and the last 6 rows of data 
tail(stats)
# Once again you can specify the number of rows using n
tail(stats, n=8)

# 5- str: Not the string! Rather stands for structure
str(stats)
# Running it will make you come in contact with factors
# R groups all of the same words into factors and assigns them a number

# 6- summary- Gives a summary of your data
# Just run it to see how it works
summary(stats)
