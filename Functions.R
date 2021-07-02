# Functions in R

# Function is a block of code or a piece of code that runs only when it is called
# User- Defined function
# Syntax: function_name = function(parameters) { statements }

# function to calculate sum of two numbers
sum <- function (a, b) {
  c <- a + b
  return (c)
}
sum(10, 15)  # 25  :: calling function
formals(sum)  # $a $b :: displays formal arguments of function


# Functions Default and Name Arguments

# function to calculate sum of two numbers
sum3 <- function (x, y, z=30) {  # functions may have default argument values; to be defined from rightmost side of the arguments
  w <- x + y + z
  return (w)
}

# Passing Arguments by position
# when function is called: arguments are matched positionnaly, means R assigns first value to arg1, second val to arg2 and so on
sum3(10, 20)  # 60  :: calling function by passing arguments by position and default value of z is used

# Passing Arguments by name
# when function is called: order doesn't matter
sum3(z=31, x=10, y=20)  # 61 :: calling function by passing arguments by name and changing z=31


# Functions with multiple return values
myeval <- function (x, y) {
  w <- x + y
  z <- x * y
  # to return multiple return values from one function, a list with return argument is created
  result <- list('sum'=w, 'mul'=z)  # this list is returned
  return (result)
}
myeval(10, 20)  # $sum 30 $mul 200


# Lazy Evaluation of Function

# parameters are evaluated as only needed in the function
# Only those parameters are loaded which are actually used in the function and not those which are never used


# Inline functions (Lambda) in R

# Syntax: function_name = function(parameters)<space>return value
mysum <- function (x, y) x+y  # returns sum of x and y
mysum(10, 2)  # 12
myexp <- function (x) x^3  # returns cube of x
myexp(10)  # 1000

