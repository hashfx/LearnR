# Control Structure in R
# Sequential Control : Implicit form of control; instructions are executed in the order they are written
# Selective Control : selectively executes the instructions [if; if-else; else-if; ifelse()]
# Iterative Control : repetitively executes the instructions depending on a condition or sequence [while; repeat; for]


# Selective Control

# if statement
# Syntax : if (condition) { code }
x <- 5
if (x >= 0) {
  print("Positive Number!")  # displays message iff condition is true
}

# if-else statement
# Syntax : if (condition) { code } else { code }
x <- -2
if (x >= 0) {
  print("Positive Number!+!")  # displays message iff condition is true
} else {
  print("Negative Number!")  # displays message iff condition is false
}

# else-if statement
# Syntax: if (condition) { code } else if (condition) { code } else { code }
x <- 0
if (x > 0) {
  print("Positive Number!+!")  # displays message iff condition is true
} else if (x < 0) {
  print("Negative Number")  # displays message if above condition is false and latter condition is true
} else {
  print("Zero!")  # displays message if all above conditions are false
}

# ifelse() function
# Syntax: ifelse(condition, stetement if true, statement if false)
x <- 5
ifelse(x >= 0, 'Positive!', 'Negative!')
# check for even or odd numbers
x <- 10
ifelse(x%%2==0, 'Even', 'Odd')


# Iterative Control

# for loop
# Syntax: for(variable in sequence, vectors, matrices, dataframe) { body of loop }
for (i in 1:5) print(i)  # 1 2 3 4 5 :: if body of loop has one statement only, it can be used without curly braces also
# iteration over sequence or predefined constants
x <- letters  # predefined constant of english alphabet
y <- x[1:5]  # slice first 5 letters
for (j in y) print(j)  # "a" "b" "c" "d" "e"

# while loop
# Syntax: initializer :: while (condition) { body of loop; incrementer/decrementer }
x <- 1
while (x <= 5) {
  print(x)  # 1 2 3 4 5
  x <- x + 1
}

# repeat loop
# works same as while loop but must have a break statement to terminate the loop
# Syntax: initializer :: repeat { body of loop; break statement; incrementer/decrementer}
i <- 1
repeat {
  print(i)
  if (i>5)  # would executes until i > 5 or is 6
    break  # break keyword which breaks execution of loop once a condition is reached
  i <- i + 1  # incrementer  # 1 2 3 4 5 6
}
# break/next keyword: helps in partial execution of the loop
# break statement : when break keyword is encountered, loop is terminated and/or terminated
# next statement : statement following next statement in body of the loop are skipped and condition is re-evaluted
for (i in 1:10) {
  if (i%%2==0)
    next  # if val(i%%2==0), print(i) [statement next to next keyword] is skipped
  print(i)  # 1 3 5 7 9
}

