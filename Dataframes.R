# DATAFRAMES in R

# Dataframes are objects in R
# used to store tabular data [rows and columns]
# same as lists objects : each elements can be represented as a column
# Dataframes can be created using data.frame() function
# Data can be imported from various file types using read.table() and/or read.csv() function
# LISTS vs DATAFRAMES
# Components of list must be vectors; Dataframes columns may possibly be of different types
# Lists can have vectors of different lengths; Dataframes must have all vectors of same length
# Each vector in a list is treated as a row; each vector is treated as a column in Dataframes


# CREATING DATAFRAMES

id <- c(101, 102, 103)  # numeric vector
name <- c('Apple', 'Battle', 'Cattle')  # character vector
grade <- c(9.8, 9.6, 8.4)  # double vector
company <- data.frame(id, name, grade)  # creates dataframe
company  # displays data in tabular format

#     id   name grade
#  1 101  Apple   9.8
#  2 102 Battle   9.6
#  3 103 Cattle   8.4


# DATAFRAMEs INDEXING

# accessing entire row of dataframe
company[1,]  # access first row of dataframe
#     id  name grade
#  1 101 Apple   9.8

# accessing rows of dataframe
company[2:3,]  # access all rows from 2nd row to 3rd row
#     id   name grade
#  2 102 Battle   9.6
#  3 103 Cattle   8.4

# accessing entire column of dataframe
company[, 1]  # access first column of dataframe
# 101 102 103

# accessing rows of dataframe
company[, 2:3]  # access all columns from 2nd column to 3rd column
#      name grade
#  1  Apple   9.8
#  2 Battle   9.6
#  3 Cattle   8.4

company[2:3, 1:2]  # access 2nd and 3rd row with 1st and 2nd column
#     id   name
#  2 102 Battle
#  3 103 Cattle

# eliminating columns of dataframe
company[-2, -3]  # eliminates 2nd row and 3rd column
#     id   name
#  1 101  Apple
#  3 103 Cattle

# access individual elements from dataframe
company[[3]][1]  # [column, row]  :: 100.2

# using ($) to access elements
company$name  # "Alpha"   "Bravo"   "Charlie" "Delta"   "Echo"

# access 2nd element from column:name
company$name[2]  # "Bravo"

# updating elements of dataframes
company[[3]][3]  # 8.4
company[[3]][3] <- 9.4  # updates 8.4 to 9.4
company[[3]][3]  # 9.4
company


# DATAFRAME subset() FUNCTION

# Syntax : subset(, subset, )
report <- subset(company, grade>9.5 & id<103)  # FROM company SELECT cols WHERE grade>9.5
report
#     id  name grade
#  1 101 Apple   9.8
#  2 102 Battle   9.6

report <- subset(company, grade>9.5 & id<103, select=c(name))  # FROM company SELECT name WHERE grade>9.5
report
#      name
#  1  Apple
#  2 Battle


# DATAFRAMES rbind() AND cbind() FUNCTION
# Syntax : rbind(dataframe, row)
company <- rbind(company, data.frame(id=104, name='Delta', grade=9.6))
company
#     id   name grade
#  1 101  Apple   9.8
#  2 102 Battle   9.6
#  3 103 Cattle   9.4
#  4 104  Delta   9.6

# Syntax : cbind(dataframe, col)
company <- cbind(company, dept=c('P', 'S', 'M', 'S'))
company
#     id   name grade dept
#  1 101  Apple   9.8    P
#  2 102 Battle   9.6    S
#  3 103 Cattle   9.4    M
#  4 104  Delta   9.6    S


# DATAFRAME edit() FUNCTION
# open an editable table where elements can be modified
## companyTable <- edit(company)
## companyTable
#  1 101  Apple   9.8    P
#  2 102 Battle   9.6    S
#  3 103 Cattle   9.4    M
#  4 104  Delta   9.6    S
#  5 105   Echo   9.2    M


# MISSING DATA
x <- c(10, 20, NA, 7, 78, NaN)  # created a vector with NA as an element
x  # 10 20 NA  7 78

# checks for NA element in vector
is.na(x)  #  FALSE FALSE  TRUE FALSE FALSE  TRUE

# checks for NaN (Not a number) element in vector
is.nan(x)  # FALSE FALSE FALSE FALSE FALSE  TRUE

# remove missing values from vector
y <- is.na(x)  # stores NA-check-result in y
# removes all NA/NaN values from the vector :: vector[!vector_with_missing_value]
x[!y]  # 10 20  7 78

# Dealing with missing data in Dataframes
id <- c(101, 102, 103, 105, 106)
temperature <- c(37.9, 21.0, NA, 27.1, 25.9)
wind <- c(85, 78, 98, NA, 56)
weather <- data.frame(id, temperature, wind)
weather
#     id temperature wind
#  1 101        37.9   85
#  2 102        21.0   78
#  3 103          NA   98
#  4 105        27.1   NA
#  5 106        25.9   56

weatherNA <- complete.cases(weather)  # returns a logical vector indicating which cases are complete
weatherNA  # TRUE  TRUE FALSE FALSE  TRUE

weather[weatherNA, ]  # displays elements with No missing(NA, NaN) values
#     id temperature wind
#  1 101        37.9   85
#  2 102        21.0   78
#  5 106        25.9   56

