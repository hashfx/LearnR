# Importing data in R from Text Files, CSV

# IMPORTING DATA FROM TEXT FILES

# Data is imported into dataframes using : read.table()
# read.table() arguments :
# file: name of file from which data is to be read : mandatory argument
# header: logical value (default: false) :: specifies if file has a header or not
# sep: separator (default: <space>) :: uses a string value indicating how columns are separated
# nrows: number of rows (default: entire file) :: number of rows to read from a dataset
# skip: number of rows to skip from beginning (default: zero)


# reading data from a text file (<space> as separator)

data <- read.table('datasets/data.txt')
data  # displays the content of data.txt  :: because header property is not used, R provides its own headers

# header property displays first line of file as table header
data <- read.table('datasets/data.txt', header=TRUE)
data

# displays first 5 rows from file
data <- read.table('datasets/data.txt', header=TRUE, nrows=5)
data

# skips first 3 lines from the data file
data <- read.table('datasets/data.txt', header=TRUE, skip=3)
data

# reading data from a text file ($ as separator)
data <- read.table('datasets/data.txt', header=TRUE, sep='$')  # data separated using $ sign
data



# IMPORTING DATA FROM CSV FILES

# Data is imported into dataframes using : read.csv()
# read.csv() arguments :
# file: name of file from which data is to be read : mandatory argument
# header: logical value (default: true) :: specifies if file has a header or not
# sep: separator (default: <comma>) :: uses a string value indicating how columns are separated
# nrows: number of rows (default: entire file) :: number of rows to read from a dataset
# skip: number of rows to skip from beginning (default: zero)

data <- read.csv(file = 'datasets/sample.csv')  # a comma separated value file
data  # displays entire data of CSV file


# IMPORTING DATA FROM RDS FILES
# data <- readRDS('file.rds')  # imports data from RDS files todo RDS
data


# IMPORTING DATA FROM INTERNET

# Steps to import data from Internet:
# > check the presence of data on internet
# > check structure of dataset
# > use read.table() function to retrieve the content and to store it in dataframe

# url.show(url = 'http://nifty')  # link to location where the data is located todo nifty
# data <- read.table('http://nifty')  # stores the data into dataframe todo nifty
data  # displays data/content of CSV file as dataframe


# IMPORTING DATA FROM CLIPBOARD

# On Windows OS, use CTRL + C to copy data into clipboard
# data <- read.table('clipboard')  # use parameter [(head=TRUE)] to display first row of data as header
data  # displays copied data from clipboard, in case data is unavailable at clipboard: an error is thrown  :: default names are assigned as header


# EXPORTING DATA TO CSV FILES

# creating a dataframe
id <- c(101, 102, 103)  # numeric vector
name <- c('Apple', 'Battle', 'Cattle')  # character vector
grade <- c(9.8, 9.6, 8.4)  # double vector
company <- data.frame(id, name, grade)  # creates dataframe
company  # displays data in tabular format

# exporting data from dataframe 'company' to file 'output.csv'
write.csv(company, file='output.csv')
data <- read.table('output.csv', sep=',')  # reading data from output.csv
data  # displays data of output.csv

