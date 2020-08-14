# Now let us name Matrices
# Since have not used rep and matrix till now- let's use them more experience:
tim <- rep(c(1,2,3,4), each = 3)
tim
thus <- matrix(tim,3,4)
thus

# To change the name of the column:
colnames(thus) <- c('Why','do','this','?') # Since no. col = 4 c() needs to have 4 names
thus

# To change the name of the row:
rownames(thus) <- c('I','go','home')
thus

# Now to get certain data from the matrix, either:
thus[2,3]
thus['go',3]
thus[2,'this']
thus['go','this']
# All give the same data

# Can also change the data if you want:
thus['go','this'] <- 7
thus # Now there is a 7 where a 3 once was

# Can also NULL if you want to delete the names
rownames(thus) <- NULL
thus
