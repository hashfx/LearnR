library(dplyr)  # imports the package : 'dplyr'

### HISTOGRAM

# read 'GEStock.csv' file
mydata <- read.csv('Datasets/GEStock.csv')

# selects col:{Date, Price}
mysubdata <- select(mydata, Date, Price)  # select(dataframe, columns_to_be_selected)

# generates histogram
hist(mysubdata$Price,  # plots histogram
     xlab = 'Stock Price',  # label for X-axis
     main = 'Stocks Data',  # title of histogram
     col = 'blue',  # color of bar graph
     border = 'green',  # border color of histogram
     breaks = 20  # divides range of data
)


