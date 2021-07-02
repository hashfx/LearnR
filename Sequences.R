# Sequences in R
# R provides colon operator and sequence function to generate sequence of numbers

x <- 1:10  # generates sequence of numbers from 1 to 10
x  # 1  2  3  4  5  6  7  8  9 10

# generates sequence of numbers in reverse order
x <- 10:1
x  # 10  9  8  7  6  5  4  3  2  1

# generates sequence of numbers from 2 to 20 by multiplying each number by 2
x <- 1:10 * 2
x  # 2  4  6  8 10 12 14 16 18 20

# addition operation on squences
x <- 1:10 + 2  # generates sequence from 1 to 10 and then adds 2 to each element
x  # 3  4  5  6  7  8  9 10 11 12

# generating sequence from variable assigned value
x <- 5
1:x  # 1 2 3 4 5
# generated sequence from 1 to 5 and then subtracts 1 from each element
1:x-1  # 0 1 2 3 4
# generated sequence from 1 to 4 because parantheses has higher priority and is evaluted first
1:(x-1)  # 1 2 3 4

# generating sequence using sequence function
# seq(from, to, by, length)
x <- seq(from=5)  # 1arg: generates sequence of numbers from 1 to 5 : by default sequence starts from 1
x  # 1 2 3 4 5
x <- seq(1, to=5)  # 2arg: generates sequence of numbers from 1 to 5
x  # 1 2 3 4 5
x <- seq(1, 10, by=2)  # 3arg: generates sequence of numbers from 1 to 9 by incrementing next element by 2
x  # 1 3 5 7 9
x <- seq(1, 10, length=4)  # 4arg: generates sequence of numbers from 1 to 10 dividing range into 4 parts
x  # 1 4 7 10
# x <- seq(1.0, 2.0, 0.2)  # 4arg: generates sequence of numbers from 1.0 to 2.0 with a gap of 0.2
# x  #
# x <- seq(1, 5, 0)  # 4arg: generates error because sequence can't be divided into 0 parts
# x  # Error in seq.default(1, 10, 1, length = 4) (Sequences.R#35): too many arguments

# Some Sequences
# generating odd numbers between 1 to 10
x <- seq(1, 10, 2)
x  # 1 3 5 7 9
# generating even numbers between 10 to 1 in reverse order
x <- seq(10, 0, -2)
x  # 10  8  6  4  2  0
# generating odd numbers between 10 to 1 in reverse order
x <- seq(9, 1, -2)
x  # 9 7 5 3 1

