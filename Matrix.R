# Matrices in R
# Matrices are 2-dimensional vectors
# Dimensional attribute is of length 2, i.e. they have rows and columns
# Matrices are created using matrix() function
# Matrices are created column wise and not row wise
# Attributes of matrix() : nrows() number of rows; ncol() number of columns; byrow() logical value (default is false)


# CREATING EMPTY MATRIX
m <- matrix(nrow = 2, ncol = 3)  # generates matrix with 2 rows and 3 columns
m  # displaying empty matrix
#     [,1] [,2] [,3]
# [1,]   NA   NA   NA
# [2,]   NA   NA   NA

# displays dimensions of matrix m
dim(m)  # 2 3

# displays dimensions of rows of matrix m
nrow(m)  # 2
# displays dimensions of columns of matrix m
ncol(m)  # 3
# displays number of elements of matrix m
length(m)  # 6


# default matrix : column wise
m <- matrix(c(1, 2, 3, 4, 5, 6))
m  # generates a matrix with 6 rows and 1 column
dim(m)  # 6 1

# column wise matrix (default)
m <- matrix(c(1, 2, 3, 4, 5, 6), nrow=2, ncol=3)
m  # generates a matrix 'column wise' with 2 rows and 3 columns
#       [,1] [,2] [,3]
#  [1,]    1    3    5
#  [2,]    2    4    6
dim(m)  # 2 3

# row wise matrix
m <- matrix(c(1, 2, 3, 4, 5, 6), nrow=2, ncol=3, byrow = TRUE)
m  # generates a matrix 'row wise' with 6 rows and 1 column
#      [,1] [,2] [,3]
# [1,]    1    2    3
# [2,]    4    5    6
dim(m)  # 2 3


# converting vector to (2,3) matrix
m <- c(1, 2, 3, 4, 5, 6)  # created a vector of 6 elements
dim(m) <- c(2, 3)  # converts vector into (2,3) matrix
m  # generates a matrix with 2 rows and 3 columns
#       [,1] [,2] [,3]
#  [1,]    1    3    5
#  [2,]    2    4    6

# converting vector to (3,2) matrix
dim(m) <- c(3,2)  # converts vector into (3,2) matrix
m  # generates a matrix with 3 rows and 2 columns
#       [,1] [,2]
#  [1,]    1    4
#  [2,]    2    5
#  [3,]    3    6


# creating matrix using matrix() function and sequence operator(:)
m <- matrix(1:6)
m  # matrix with 1 row and 6 columns is created

m <- matrix(1:6, nrow=2, ncol=3)  # creates a matrix with sequence of numbers from 1 to 6
m  # matrix with 2 rows and 3 columns is created



# diag() : MATRIX DIAGONAL FUNCTION
# used to construct a diagonal matrix
m <- matrix(4, 3, 3)  # generates a matrix of 3 rows and 3 columns with all elements as 4
m
#       [,1] [,2] [,3]
#  [1,]    4    4    4
#  [2,]    4    4    4
#  [3,]    4    4    4

# Square matrix with identical diagonal elements and rest as 0
m <- diag(1, 3, 3)  # generates an Identity matrix of 3 rows and 3 columns with diagonal elements as 1 and rest 0
m
#       [,1] [,2] [,3]
#  [1,]    1    0    0
#  [2,]    0    1    0
#  [3,]    0    0    1

# extracting diagonal elements of matrix using diag() function
diag(m)  # 1 1 1

# Square matrix with unidentical diagonal elements using sequence operators
m <- diag(1:3)  # rows and columns are decided by the sequence
m
#       [,1] [,2] [,3]
#  [1,]    1    0    0
#  [2,]    0    2    0
#  [3,]    0    0    3

# extracting diagonal elements of matrix using diag() function
diag(m)  # 1 2 3



# NAMING ROW AND COLUMN NAMES OF MATRIX
m <- matrix(c(2, 3, 4, 0, 1, 2, -1, -3, 5), nrow=3, ncol=3, byrow=TRUE)
rownames(m) <- c(1, 2, 3)  # changes row names to 1, 2, 3
colnames(m) <- c('A', 'B', 'C')  # changes column names to A, B, C
m  # displays matrix with rows as [1, 2, 3] and column as [A, B, C] in lieu of default as [1, 2, 3]
#     A  B C
#  1  2  3 4
#  2  0  1 2
#  3 -1 -3 5


# MATRIX INDEXING
A <- matrix(c(2, 3, 4, 0, 1, 2, -1, -2, 5, 8, 6, -3), nrow = 4, ncol = 3, byrow = TRUE)
A
#       [,1] [,2] [,3]
#  [1,]    2    3    4
#  [2,]    0    1    2
#  [3,]   -1   -2    5
#  [4,]    8    6   -3

# accessing matrix elements using indexing operator
A[1, 2]  # 3 :: matrix[row, col]

# accessing entire row
A[1,]  # 2 3 4 :: first row :: matrix[row, <&nbsp;>]

# accessing entire column
A[,1]  # 2  0 -1  8 :: first column :: matrix[<&nbsp;>, column]

# accessing last row and/or column of a matrix
A[nrow(A), ]  # 8  6 -3 :: matrix[ncol(matrix), <&nbsp;>]  :: returns last row of matrix
A[, ncol(A)]  # 4  2  5 -3 :: matrix[<&nbsp;>, ncol(matrix)]  :: returns last column of matrix

A[-3,]  # a matrix without 3rd row is displayed
A[, -3]  # a matrix without 3rd column is displayed

# changing value of matrix elements
A[2, 3] <- 9  # changes value at [2,3] to 9

# displays matrix with first 3 rows and 1st, 2nd column
A[1:3, 1:2]

# displays row with first 3 rows and 1st and 3rd column, eliminating 2nd column
A[1:3, -2]

# using vectors to access subset more than one row or column at a time
A[c(1,3),]  # displays matrix of 1st, 3rd row with all the columns
A[, c(1,3)]  # displays matrix of all rows and 1st, 3rd column

# deleting rows and/or columns of matrix from original matrix
A <- A[, -2]  # deletes 2nd column

A  # updated matrix :: dim(A) 4 2
A <- A[-3, ]
A  # updated matrix :: dim(A) 3 3


# deleting 3rd row and 1st column from original matrix
A <- A[-3, -1]
A  # updated matrix :: dim(A) 3 2



# MATRIX rbind(), cbind() FUNCTION
A <- matrix(c(2, 3, 4, 0, 1, 2, -1, -2, 5), nrow=3, ncol=3, byrow=TRUE)
A

# combining elements of matrix A with those of a vector

# combining elements of matrix with vectors to row
B <- rbind(A, c(10, 11, 12))
B  # adds a new 4th row with elements as 10 11 12

# combining elements of matrix with vectors to column
C <- cbind(A,c(10,11,12))
C  # displays matrix A with elements of C as 4th column

# Combining elements of 2 matrices : dimensions of matrices must match

# rbind()
B <- matrix(c(11, 21, 31), nrow=1, ncol=3, byrow=TRUE)
C <- rbind(A,B)
C  # displays matrix B with elements of C as 4th row

# cbind()
B <- matrix(c(10, 11, 12), nrow=3, ncol=1, byrow=TRUE)
C <- cbind(A, B)
C  # displays matrix A with elements of C as 4th column


# MATRIX OPERATIONS
A <- matrix(c(1, 2, 3, 4, 5, 6, 7, 8, 9), nrow=3, ncol=3, byrow=TRUE)
B <- matrix(c(9, 8, 7, 6, 5, 4, 3, 2, 1), nrow=3, ncol=3, byrow=TRUE)

# addition operation on matrices
A + B

# subtraction operation on matrices
A - B

# multiplication operation on matrices
A * B  # not matrix multiplication :: element by element multiplication
A %*% B  # Matrix Multiplication using %*% operator

# division operation on matrices
A / B

# transpose of matrix
t(A)

# returns inverse of the matrix if invertible
A <- diag(1, 3, 3)  # creates inverse matrix
solve(A)



# MATRIX SPECIFIC FUNCTIONS
A <- matrix(1:9, 3, 3)  # matrix with 1 to 9 elements of 3 rows and 3 columns

# rowSums() : returns sum of all elements of each row
rowSums(A)  # 12 15 18

# colSums() : returns sum of all elements of each column
colSums(A)  # 6 15 24

# rowMeans() : returns mean of all elements of each row
rowMeans(A)  # 4 5 6

# colMeans() : returns mean of all elements of each column
colMeans(A)  # 2 5 8

# apply() : 1 for rows; 2 for columns
apply(A, 1, sum)  # 12 15 18
apply(A, 2, sum)  # 6 15 24

