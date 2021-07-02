# print statement in R console
print('Hello, R!')  # displays Hello, R! on console screen

# Basic Mathematical Operations

# Assignment Operator: <- (less than sign with a hypen)
x <- 7  # variable x is assigned value of 18
y <- 2
# Performing Operations in R
z = x + y  # Addition Operation :: <- can also be used in lieu of =
z  # do display result of x+y  :: 9
# print(z)  # result can also be displayed using print statement  :: 9

10 - 5  # 5 :: Subtraction Operation
10 * 5  # 50 :: Multiplication Operation
10 / 3  # 3.333333 :: Division Operation
10 ^ 2  # 100 :: Exponential Operation :: ** is dep[recated and ^ is used
10 ^ 1/2  # 5 :: because exponant has higher precedence than division so it is calculated as : [(10^1)/2]
10 ^ (1/2)  # 3.162278 :: same as: sqrt(10)
10 %% 2.5  # 0 :: Modulus Operation (returns remainder)
10 %/% 3  # 3 :: Integer Division Operation


-10 %% 3  # 0
-10/3  # -3.333333 :: Simple Division
-10 %/% 3  # -4 [-10/3 = -3.33333] which is rounded to -4

# Arithmatic Operations on Boolean Values

TRUE + TRUE  # 2
TRUE + FALSE  # 1
FALSE + TRUE  # 1
FALSE + FALSE  # 0

TRUE - TRUE  # 0
TRUE - FALSE  # 1
FALSE - TRUE  # -1
FALSE - FALSE  # 0

TRUE * TRUE  # 1
TRUE * FALSE  # 0
FALSE * TRUE  # 0
FALSE * FALSE  # 0

TRUE / TRUE  # 1
TRUE / FALSE  # Inf
FALSE / TRUE  # 0
FALSE / FALSE  # NaN
# Arithmetic operation can not be performed on Strings ['Hello' + 'R']

# Variables in R

# Variables are used to store values
my_var = 10  # using assignment operator =
my_var <- 20  # using assignment operator <-
my_var  # displays latest value of variable





