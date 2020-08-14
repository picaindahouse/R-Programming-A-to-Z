# We Will be learning about matrices in this lesson

# First what is a matrix in R?
# It is basically a table

# Now which one is the column and which one is the row
# Horizontal(the top)- Column
# Vertical(the side)- Row


# How to make a matrix:
# 1)
# Using matrix()- won't be used very often but good to know
alphabet = c(1,2,3,4,5,6,7,8,9,10,11,12)
matrix(alphabet,3,4)  # Basically bends the vector into a matrix
# matrix(vecton, no. row, no. column)

# You might realise that the numbers are arranged in columns, to arrange in rows:
matrix(alphabet,3,4,byrow=T) 

# 2) 
# rbind & cbind- the preferred method
# rbind binds vectors of the same length into rows
# cbind binds vectors of the smae length in columns
# Again all data type must be the same

tom <- c('I', 'Hate', 'You') 
tim <- c('Fuck','you','too')
tum <- c('Cry','me','a')
tam <- c('river','you','bitch')
tem <- c(1,2,3)
rbind(tom,tim,tum,tam,tem)
cbind(tom,tim,tum,tam,tem)
 
# As you can notice the data in tem have been converted into chr
