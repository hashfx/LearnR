library(dplyr)  # imports the package : 'dplyr'

### BOX PLOT : generates brief summary of data

# read 'crime.csv' file
mydata <- read.csv('../datasets/theft.csv')

# selects col:{state, population, crime}
mysubdata <- select(mydata, state, population, thieves, region)  # select(dataframe, columns_to_be_selected)

# generates box plot
boxplot(mysubdata$thieves ~ mysubdata$region,
        xlab = 'Region',  # label for X-axis
        ylab = 'Thieves',  # label for Y-axis
        main = 'Region vs Thieves',  # title of box-plot
        col = 'red',  # color of box plot
        border = 'blue',  # border color of box plot
        notch = TRUE  # draws notch on both sides (up, down) of box plot
)

