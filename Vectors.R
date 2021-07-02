# Vectors in R
# Vectors are contagious cells containing data
# Vectors are 1-D array of objects used to store data

# Types of basic/atomic Vectors:
# integer vector : represents number data
# double vector : represents number data
# complex vector : represents number data
# character vector : represents character data
# logical vector : represents boolean data
# raw vector : represents raw data

# Single values or scalar values do not exist in R, they are treated as vector of length one
# Single values or strings are vectors of length one
# All elements of vector must be of same type
# In R, index of vector starts from 1
# When performing operations on negative index, that index is excluded from operation



# typeof() function in R
x <- 10
typeof(x)  # "double"
x <- 10.25
typeof(x)  # "double"
x <- 'Hello'
typeof(x)  # "character"
x <- TRUE
typeof(x)  # "logical"
x <- F  # shorthand for FALSE :: T for TRUE
typeof(x)  # "logical"


# creating Vectors
# vector can be created using assignment operator (<-), assign() function or c() function which means concatenate

# vector using assignment operator
x <- 10
x  # 10
typeof(x)  # "double"

# vector using assign() function
assign('y', 15.25)
y  # 15.25
typeof(y)  # double

# vector using c() function
z <- c('A', 'B', 'C', 'D', "e")
z  # "A" "B" "C" "D" "e"
typeof(z)  # "character"

# vector using assign and c() function
assign('w', c(TRUE, T, FALSE, F))
w  # TRUE TRUE FALSE FALSE
typeof(w)  # "logical"

# vector with values of different types
# integer, floats, and logical types implicitely covert to a string
x <- c(1, 2, 'a', 8.9, T)
x  # "1" "2" "a" "8.9" "TRUE"
typeof(x)  # "character"

# vector of sequence
y <- 1:5  # sequence can be created using colon-operator(:), seq() function, or rep() function
y  # 1 2 3 4 5

# concatenating two vectors using c() function
x <- c(1, 2, 3)  # typeof(x) : double
y <- c('a', 'b', FALSE)  # typeof(y) : character
z <- c(x, y)  # typeof(z) : character
z  # "1" "2" "3" "a" "b" "FALSE"

# assigning vector to multiple variables
z <- y <- x <- c(1.25, 2.25, 3.25, 5.25)  # typeof(x, y, z) : double
x  # 1.25 2.25 3.25 5.25
y  # 1.25 2.25 3.25 5.25
z  # 1.25 2.25 3.25 5.25

# creating vector using vector() function
# default value of vector
x <- vector()
x  # logical(0) :: default value: 0 or FALSE
typeof(x)  # "logical"
x <- vector('numeric', length=4)  # creates a numeric vector of length 4
x  # 0 0 0 0
x <- vector('character', 4)  # creates a character vector of length 4
x  # "" "" "" ""  :: creates a vector with blank character values
x <- vector('complex', 4)  # creates a vector with complex value of length 4
x  # 0+0i 0+0i 0+0i 0+0i

# length of vector using length(vector) function
# x <- c(1, 2, 3, 4, 5)
x <- 1:5
x  # 1 2 3 4 5
typeof(x)  # "integer"
length(x)  # 5


# Vector Indexing : Index starts from 1
x <- c(4, 5, 8, 10, 12, 15, 16, 20, 24, 25, 28, 30)
length(x)  # 12
x[1]  # 1st element of vector :: 4
x[-2]  # removes vector at index[2] :: 4  8 10 12 15 16 20 24 25 28 30
x[3:7]  # displays elements from index[3] to index[7] :: 8 10 12 15 16
x[c(1, 3, 4)]  # displays elements of index[1], index[3] and index[4] :: 4  8 10
x[13]  # NA
x[2] <- 7  # changes element at index[2] from 5 to 7
x  # 4  7  8 10 12 15 16 20 24 25 28 30
x[14] <- 32  # replacing element of index beyond the length of vector
x  # 4  7  8 10 12 15 16 20 24 25 28 30 NA 32
x[-5] <- 13  # changes all elements except at index[5] from the operation
x  # 13 13 13 13 12 13 13 13 13 13 13 13 13 13

# using logical vector to access elements of vector
# corresponding elements of elements which are true of logical vectors will be retrieved
x <- c(8, 16, 24, 32, 40)  # typeof(x) : "double"
y <- c(TRUE, FALSE, TRUE, TRUE, FALSE)  # typeof(y) : "logical"
x[y]  # 8 24 32 :: index[element[TRUE]]  [1, 3, 4]
y <- c(T, F)  # round-robin : 1st is true, 2nd is false, 3rd is true, 4th is false, 5th is true
x[y]  # 8 24 40

# accessing elements of vectors using loop
# for (i in 1:length(x)) print(x[i])  ::  for (i in 1:5) print(x[i])  ::  for (i in x) print(i)
for (i in seq_along(x))  # accessing elements beyond the range of vector, returns NA at unbounded place
  print(x[i])  # 8 16 24 32 40


# Matching operator on Vectors
# Syntax: element %in% vector
x <- c(1, 6, 2, 7, 3, 8, 4, 9, 5)
y <- c(9, 3, 11)
# check wheather element is present in vector or not
35 %in% x  # FALSE if element is not available; TRUE if found
y %in% x  # TRUE TRUE FALSE


# Vector Arithmetics
# Operation are performed element by element

x <- c(5, 10, 15, 20, 25)

# every element of vector is increased by 2
x + 2  # 7 12 17 22 27

# square root of every element of vector
sqrt(x)  # 2.236068 3.162278 3.872983 4.472136 5.000000

# arithmetic operation of one vector on another
y <- c(4, 8, 12, 16, 20)
x + y  # 9 18 27 36 45

# arithmetic operation of one vector on another of different lengths
y <- c(4, 8, 12)  # operation on index[4, 5] is performed in round-robin fashion
x + y  # 9 18 27 24 33 :: warning in x+y: longer object length is not a multiple of shorter object length


# Vectors Methods
x <- c(10, 30, 40, 20)
# returns length of vector: number of elements in vector
length(x)  # 4
# returns sum of all elements of vector
sum(x)  # 100
# returns product of all elements of vector
prod(x)  # 240000
# prints the vector in reverse order
rev(x)  # 20 40 30 10
# sorts the vector in ASC order
sort(x)  # 10 20 30 40
# sorts the vector in DESC order
sort(x, decreasing = TRUE)  # 40 30 20 10
# dot product of two vectors
y <- c(2, 4, 6, 8)
x %*% y  # 540
# cross product of two vectors
crossprod(x, y)  # 540
# outer product of vectors
x %o% y  # tcrossprod(x, y)
#     [,1] [,2] [,3] [,4]
# [1,]   20   40   60   80
# [2,]   60  120  180  240
# [3,]   80  160  240  320
# [4,]   40   80  120  160


# Vector Coercion [implicit, explicit]
# vector with different types can be coerced into that of character type
x <- c(10, 'alpha', 20, 40, 40.5, FALSE)  # vector with elements of different types
x  # "10"    "alpha" "20"    "40"    "40.5"    "FALSE"  ::  typeof(x) : "character"

# logical vectors can easily be coerced into numbers
x <- c(10, TRUE)
x  # 10 1  ::  typeof(x) : "double"

# explicitly convert type of vector
x <- 0:5
x  # 0 1 2 3 4 5
class(x)  # "integer"
# convert to logical vector
as.logical(x)  # FALSE  TRUE  TRUE  TRUE  TRUE  TRUE
# convert to character vector
as.character(x)  # "0" "1" "2" "3" "4" "5"
# converting character vector to numeric vector
x <- c('Alpha', 'Beta',  'Gamma', 'Delta')
class(x)  # "character"
as.numeric(x)  # NA NA NA NA  ::  Warning: NAs introduced by coercion
as.logical(x)  # NA NA NA NA  ::  Warning: NAs introduced by coercion


# Logical Vector
#  using logical/relational operators in R : <, <=, >, >=, ==, !=
x <- c(10, 20, 30, 40, 50, 45)
y <- x > 30  # generates a logical vector for values > 30
y  # FALSE FALSE FALSE  TRUE  TRUE  TRUE
# relationals operators comparing two vectors
b <- c(20, 30, 15, 40, 48, 98)
x < b  # TRUE  TRUE FALSE FALSE FALSE  TRUE :: comparing two vectors

z <- x > 30 & x < 50  # generates a logical vector for values [30 < x < 40]
z  # FALSE FALSE FALSE  TRUE FALSE  TRUE

# which element of vector x is greater than 30 :: returns index of result
which(x>30)  # 4 5 6
x[which(x>30)]  # 40 50 45 :: extracting elements > 30


# Factors in R
# Used to represent categorical data
# Treates as integer vector, having a label
# Factors are self describing
# For example using:
# Male (rather than 0)
# Females (rather than 1)
# Created using factor() function

x <- c('Male', 'Female', 'Male', 'Male', 'Female')
typeof(x)  # "character"
# creating factor using factor() function
x <- factor(c('Male', 'Female', 'Male', 'Male', 'Female'))
x  # Male   Female Male   Male   Female    Levels: Female Male : 'Levels represents unique elements of vector'
table(x)  # gives count of the factors
#   x
#   Female   Male
#     2      3

