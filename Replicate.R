# Replicate function in R : replicates the value
# first arg: value to be replicated
# second arg: number of times to replicate the value

x <- rep(x=1, times=5)  # 1 is replicated 5 times
x  # 1 1 1 1 1

# replicate string or character
x <- rep('R', 5)
x  # "R" "R" "R" "R" "R"

# replicating sequence
x <- 1:3  # 1 2 3
y <- rep(x, 5)  # replicates 1 2 3 five times
y  # 1 2 3 1 2 3 1 2 3 1 2 3 1 2 3
z <- rep(x, each=5)  # replicates each item of sequence five times
z  # 1 1 1 1 1 2 2 2 2 2 3 3 3 3 3

