library(dplyr)  # imports the package : 'dplyr'

### SCATTER PLOT

# read 'crime.csv' file
mydata <- read.csv('../datasets/crime.csv')

# selects col:{state, population, crime}
mysubdata <- select(mydata, state, population, crime)  # select(dataframe, columns_to_be_selected)

# generates Scatter Plot Graph to plot population againt crime
plot(mysubdata$population,  # values of x axis
     mysubdata$crime,  # values of y axis
     xlab = 'Population',  # label for X-axis
     ylab = 'Crime',  # label for Y-axis
     main = 'Population vs Crime',  # title of scatter-plot
     col = 'red',  # color of bar graph
     pch = 20  # point character  :: modifies shape of points
)

