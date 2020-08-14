# We will now be covering something we have already learnt in python:

tom = c('a', 'b', 'c', 'd', 'e')
# The [1] & [1:3] is the same as python- just that it is indexed from 1 and not 0
tom[1]
tom[2]
tom[3]
tom[1:2]
tom[1:4]

# However [-1] is different
tom[-3]  # It removes the 3rd data
# Thus [-3:-5] means remove the 3rd to 5th data
tom[-3:-5]

# Also can put vectors into the brackets:
tom[c(1,3,5)]    # Will return the data accordingly
