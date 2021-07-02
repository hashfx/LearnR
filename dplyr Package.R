# dplyr package
# to download dplyr package, type in R Console : install.packages('dplyr')

library(dplyr)  # importing/loading dplyr package

###
# dplyr select() function : used to select columns of a dataframe
###

mydata <- read.csv('datasets/theft.csv')  # loads 'theft.csv'
mydata  # displays content of dataframe

dim(mydata)  # 25 8 :: displays dimension of the table mydata
str(mydata)  # displays structure of table mydata, i.e., no of observations; datatype of each column

# selecting columns using c() function

mydata[c(1, 4, 6)]  # displays all observations with 1st, 4th and 6th coloum
# mydata[c(abb, population, thieves)]  # displays all observations from column abb, population, thieves

# getting heading names
names(mydata)  # return first column names (heading) of the CSV data


# selecting columns using select() function

mysubdata <- select(mydata, state:population)  # select content from col:state to col:population from mydata
mysubdata

# selecting individual columns using select() function
mysubdata <- select(mydata, state, population, gunownership)  # select content from specified columns from CSV table mydata
mysubdata

# omitting individual columns using select() function and negative index
mysubdata <- select(mydata, -abb)  # displays mysubdata without col:abb
mysubdata
mysubdata <- select(mydata, -(abb:region))  # displays mysubdata without from col:abb to col:region
mysubdata
mysubdata <- select(mydata, -c(abb, population, weaponized))  # displays mysubdata without columns stated in c()
mysubdata


###
# dplyr filter() function : used to select columns of a dataframe
###

mysubdata <- filter(mydata, thieves > 250 & population < 4000000)  # filters data WHERE theives > 250 and population < 40M
mysubdata  # displays filtered data

###
# dplyr arrange() function
###

mysubdata <- arrange(mydata, thieves)  # data is arranged according to col:thieves in ASC order
# mysubdata <- arrange(mydata, desc(thieves))  # data is arranged according to col:thieves in DESC order
mysubdata

head(mysubdata, 5)  # displays first 5 columns from dataframe:mysubdata
tail(mysubdata, 5)  # displays last 5 columns from dataframe:mysubdata


###
# dplyr rename() function
###

mydata <- rename(mydata, abbrivation=abb, criminals=thieves)  # rename(dataframe, new_name=old_name)
names(mydata)  # displays col:abb as col:abbrivation and col:thieves as col:criminals


###
# dplyr mutate() function : changes the data table by adding/removing a column
###

mydata <- mutate(mydata, ratio=criminals/population)  # mutate(dataframe, new_column)
names(mydata)  # adds new column : "ratio"
mysubdata <- select(mydata, state, population, criminals, ratio)  # SELECT cols(state, population, criminals, ratio)
mysubdata  # displays dataframe with state, population, criminals, ratio

mysubdata <- transmute(mydata, ratio = criminals/population)  # drops all the non-transformed columns
names(mysubdata)  # displays dataframe with col:ratio only


###
# dplyr group_by() function : generates summary statistics
###

mydata <- group_by(mydata, region)
mydata

# summary of dataframe:mydata
summarize(mydata, sum(criminals))  # displays sum of col:criminals and arranges region-wise
summarize(mydata, median(criminals))  # displays median of col:criminals and arranges region-wise

###
# dplyr Pipe Operator : %>% :: result of first operation is input for second operator (left to right)
###

mydata <- arrange(mydata, criminals)
mysubdata <- select(mydata, state, criminals)
mysubdata

# dataframes must not be used as first argument for subsequent operation
arrange(mydata, desc(criminals)) %>% select(state, criminals) %>% head(3)  # displays 3 elements in DESC order with head(region, state, criminals)

