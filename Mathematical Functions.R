# Mathematical Functions in R

x <- c(4.25, -3.4, 5.87, 7.03)  # a numeric vector with 4 elements

# abs() : absolute value of elements of vector x
abs(x)  # 4.25  3.40  5.87  7.03

# ceiling() : returns next integer corresponding to the element
ceiling(x)  # 5 -3  6  8

# floor() : returns smallest integer corresponding to the element
floor(x)  # 4 -4  5  7

# rounds off the number
round(x)  # 4 -3  6  7
round(x, digits = 1)  # 4.2 -3.4  5.9  7.0  :: rounds off upto 1 decimal places

# truncates floating point number to whole number  :: removes the decimal places
trunc(x)  # 4 -3 5 7


x <- c(4.25, 16, 5.87, 7.03, 25.0)

# square root :: returns NaN for negative digits :: Warning in sqrt(x) : NaNs produced
sqrt(x)  # 2.061553 4.000000 2.422808 2.651415 5.000000

# exponent() : returns exponential values of values of vector x
exp(x)  # 7.010541e+01  8.886111e+06  3.542490e+02  1.130031e+03  7.200490e+10

# logarithm : returns NaN for negative digits :: Warning in log(x) : NaNs produced
log(x)  # 1.446919 2.772589 1.769855 1.950187 3.218876
log(x, base = 2)  # 2.087463  4.000000  2.553361  2.813525  4.643856 :: returns log base 2 (x)
log2(x)  # 2.087463  4.000000  2.553361  2.813525  4.643856 :: returns log base 2 (x)
log10(x)  # 0.6283889  1.2041200  0.7686381  0.8469553  1.3979400

# Factorial :: returns NaN for negative numbers :: Warning in gamma(x + 1) : NaNs produced
x <- c(4, 3, 6)
factorial(x)  # 24 6 720

# Random Numbers in R
# By default, rnorm() function uses mean as 0 and Standard Deviation as 1
x <- rnorm(10)  # generates 10 random number
x  # 0.5615067  0.7437694 -0.8336562  1.5042072 -1.6161879  0.3357549  0.5076572 -1.4290417  1.0274646 -0.5459202

x <- rnorm(5, mean = 15, sd = 1)  # generates random number with Mean as 15 and SD as 1
x  # 14.88437  13.82221  14.44493  13.74687  15.72459

