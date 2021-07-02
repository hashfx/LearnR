library(dplyr)  # imports the package : 'dplyr'

### LINE GRAPH

# read 'crime.csv' file
mydata <- read.csv('../datasets/crime.csv')

# selects col:{state, population, crime}
mysubdata <- select(mydata, state, population, crime)  # select(dataframe, columns_to_be_selected)

# generates line graph
plot(mysubdata$crime,
     type = 'l',  # type='l' : generates line graph
     xlab = 'State',  # label for X-axis
     ylab = 'Crime',  # label for Y-axis
     main = 'States vs Crime',  # title of line-graph
     col = 'blue'  # color of line graph
)

