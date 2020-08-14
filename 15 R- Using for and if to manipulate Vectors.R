# I was trying to find out how to manipulate vectors like one does in python:
# Eg: tom = [x**2 for x in range(1:5)]

tom = c()  # First you define tom with a null vector
# Then for each value of x in the range- add x**2 to tom
for (x in 1:5){tom = c(tom,x**2)} 


# Thus say from a list of [3,52,46,63,23,3,6,7,5,235,56] 
# You want only the numbers which are more than 45:
So = c(3,52,46,63,23,3,6,7,5,235,56)
new_list = c()
for (x in So)
{if (x > 45)
{new_list <- c(new_list,x)}}
new_list

# Really cool right!!!
