library(dplyr)  # imports the package : 'dplyr'

### VERTICAL BAR GRAPHS

# read 'crime.csv' file
mydata <- read.csv('../datasets/crime.csv')

# selects col:{state, population, crime}
mysubdata <- select(mydata, state, population, crime)  # select(dataframe, columns_to_be_selected)

# generates bar graph
barplot(mysubdata$population,  # plots population on bar graph
        xlab = 'states',  # label for X-axis
        ylab = 'population',  # label for Y-axis
        main = 'States vs Population',  # title of bar-graph
        names.arg = mysubdata$state,  # labels for each bar
        col = 'blue'  # color of bar graph
)

# generate bar graph for top 5 states with height crime
mysubdata_sort <- arrange(mydata, desc(crime))  # arranges data into DESC order according to col:crime
mysubdata <- select(mysubdata_sort, state, population, crime)
myhighdata <- head(mysubdata, 5)  # top 5 states with highest crime

# generates bar graph
barplot(myhighdata$crime,  # plots crime on bar graph
        xlab = 'states',  # label for X-axis
        ylab = 'crime',  # label for Y-axis
        main = 'States vs Crime',  # title of bar-graph
        names.arg = myhighdata$state,  # labels for each bar
        col = 'cyan'  # color of bar graph
)


### HORIZONTAL BAR GRAPHS

barplot(mysubdata$population, horiz = TRUE,  # generates horizontal bar graph
        xlab = 'Population',  # label for X-axis
        ylab = 'States',  # label for Y-axis
        main = 'States vs Population',  # title of bar-graph
        col = '#ABCDEF',  # color of bar graph
        names.arg = mysubdata$state  # labels for each bar
)


### STACKED BAR GRAPHS

mysubdata <- mutate(mydata, popu=population/10000)  # creates 4th column && divides population by 10K for convenience
names(mysubdata)  # "state"    "population"    "crime"    "popu"

mysubdata <- mysubdata[c(1, 3, 4)]  # selects 1st, 3rd and 4th column

# generates stacked bar graph : first argument is to be passed as matrix
# barplot(mysubdata$popu)  # creates bar graph
mymatrix <- data.matrix(mysubdata)  # creates a matrix of mysubdata
mymatrix  # generates a matrix with numeric values of states
mymatrix_transpose <- t(mymatrix)  # transpose of matrix:mymatrix

barplot(mymatrix_transpose,
        xlab = 'States',  # label for X-axis
        main = 'Population vs crime',  # title of bar-graph
        col = c('blue', 'red'),  # vector of color for stacks
        names.arg = mysubdata$state  # assigns state values to x axis
)

# creating legend for Stacked Bar Graph

legend('topleft', c('Population', 'Crime'),
       fill=c('blue', 'red')
)

