# Learn to import data
# Two Methods:

# Method 1: Select the File Manually
stats1<- read.csv(file.choose())

# Method 2: Set WD and Read Data 
# Basically type the location in manually- but have to change all the \ to \\
setwd("C:\\Users\\utkar\\Desktop\\UNI PREP\\Programming\\R\\R Programming A to Z")
getwd()
stats<- read.csv("P2-Demographic-Data.csv")

stats==stats1  # Prove that both methods give you the same thing

