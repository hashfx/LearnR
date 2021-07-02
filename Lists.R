# LISTS in R
# Lists are collections of data used for data storage
# List is one dimensional heterogenous data structure
# Lists can contain elements of any type of R object and vectors as elements
# Elements of list need not be of same type
# List can be created using list() function
# List index starts from 1


# creating a list using list() function
x <- list(10, 'A', TRUE)  # created a list using list() function
x  # displays list :: [[10]]  [["A"]]  [[TRUE]]

# list using vectors
dID <- c(101, 102, 103, 104, 105)  # created a numeric vector
dnames <- c('Alpha', 'Bravo', 'Charlie', 'Delta', 'Echo')  # character vector
salary <- c(100.20, 200.30, 300.40, 400.50, 500.50)  # double vector

developers <- list(dID, dnames, salary)  # created a list of vectors
developers  # displays combined-vectors as list

# creating list using c() function to create list of vectors
l <- list(c('A', 'B', 'C', 'D'), c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10), c(T, F))
l

# LIST INDEXING
id <- c(11, 100, 101, 110, 111)
id[1]  # 11
id[[1]]  # 11

# accessing 2ns element of 1st vector from list[l]
l[[1]][2]  # "B"  :: using double square brackets [[]] allows to access individual elements
# changes element at index[1,2] to "Beta"
l[[1]][2] <- 'Beta'  # changes "B" to "Beta"
l[[1]][2]  # "Beta"

# LIST SUBSET OPERATOR ($)

developers <- list('id'=dID, 'name'=dnames, 'salary'=salary)
developers$id  # 101 102 103 104 105  :: displays elements by name : id

# using c() operator to access elements of list
developers[c(1, 3)]  # retrieves elements from name:$id and name:$salary
developers[c('id', 'salary')]  # retrieves elements from name:$id and name:$salary :: same as above


# LIST CONCATENATION
l1 <- list(c(1, 2, 3, 4, 5))
l2 <- list(c('A','B','C','D','E'))
l3 <- c(l1, l2)  # concatenated l1 and l2
l3

