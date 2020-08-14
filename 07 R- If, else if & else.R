# This lesson will be on if
# A bit xtra on rnorm and rm

# Use rnorm to get random numbers from binomial distribution
rnorm(1) # 1 means you get 1 random numbers from mainly -2 to 2


# Simple if statement
x <- rnorm(1)
if (x > 1){print('X is greater than 1')}

# Can add in else as well
if (x > 1){print('X is greater than 1')
}else{print('X is less than or equal to 1')}  
# Always let the bracket from the lineb before be there to show continuation

# Finally, in R elif is called else if and this is how u wud do dis:
if(x > 1){
  print('X is greater than 1')
} else if ( x < -1 ) {print('X is lesser than -1')
}else {print('X is between -1 and 1')}

rm(x)  # rm removes the variable in the bracket from the global environment
