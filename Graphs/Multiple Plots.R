### MULTIPLE PLOTS IN A LAYOUT

# par and mfrow :: generates plots in an array of dimension (nr, nc)
par(mfrow=c(2,2))  # divides layout into 2 rows and 2 columns
library(dplyr)  # imports the package : 'dplyr'

# read 'crime.csv' file
mydata <- read.csv('datasets/crime.csv')

# selects col:{state, population, crime}
mysubdata <- mutate(mydata, popu=population/10000)  # select(dataframe, columns_to_be_selected)
names(mysubdata)  # "state"  "population"  "crime"  "popu"
mysubdata <- mysubdata[c(1, 3, 4)]  # select 1st, 3rd, and 4th column :: select[state, crime, popu]

# generating 2 vertical bar graphs on one plot

# generates graph at (1row, 1col)
barplot(mysubdata$popu,
        xlab = 'States',
        ylab = 'Population',
        main = 'State vs Population',
        col = 'blue',
        names.arg = mysubdata$state
)

# generates graph at (1row, 2col)
barplot(mysubdata$crime,
        xlab = 'States',
        ylab = 'Crime',
        main = 'State vs Crime',
        col = 'blue',
        names.arg = mysubdata$state
)

# scatter plot

# generates graph at (2row, 1col)
plot(mysubdata$popu,
     mysubdata$crime,
     xlab = 'Population',
     ylab = 'Crime',
     main = 'Population vs Crime',
     col = 'red',
     pch = 20
)

