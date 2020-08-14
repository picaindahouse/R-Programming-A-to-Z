# How to get data out of a matrix
# Let's make a matrix first
r1 <- c(1,2,3)
r2 <- c(4,5,6)
r3 <- c(7,8,9)
Test = rbind(r1,r2,r3)

# To get a specific data out of the matrix:
Test[2,3]  # Matrix[row,column]

# To get a row out of the matrix:
Test[3,] # Matrix[row number,]

# To get a column out of the matrix:
Test[,2] # Matrix[, column number] 

# If you want to switch your column and rows:
t(Test)
# That is all- t(matrix) switches your column and row
