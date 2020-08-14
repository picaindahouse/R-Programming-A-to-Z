# Using Normal Distribution and The Law of Large Numbers
# Covered in the Word Doc
# The percentage chance for a number between -1 and 1 to come out
# from rnorm(1) is 68.2%. Thus make a program which takes n number
# of rnorm(n) and finds out what % of the numbers are between -1 and 1
# The larger n is, the closer to 68.2% you should get.

y = 0
n = 10000  # Just change n here to see your answer
for (x in rnorm(n)){
  if (x >= -1 & x<=1){y = y+1}
}
y_real = y/n*100
tom = toString(y_real)
tim = 'Mean(Xn) = '
tam = '%'
print(paste(tim,tom,tam,sep = ''))

