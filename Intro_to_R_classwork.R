
#######################
##### Basics of R #####
#######################


### Comments

# This is how you make a comment!


### Assignment

# Preferred syntax
height <- 442

# These also work
442 -> height
height = 442

height


# R is case sensitive. These are all different objects
name <- "greg" 
Name <- "steve"
NAME <- "mary"


### Operations: R is a big calculator!

# Add
3 + 3

# Subtract
6 - 3

# Multiply
4 * 3

# Divide
6 / 2

# Floored quotient
floor(7 / 2)

# Ceiling quotient
ceiling(7 / 2)

# Remainder or modulus
7 %% 2

# Absolute value
abs(-5)





## Classes and Data Structures 

### Classes


# Default to numeric
height <- 442
class(height)

# Can force it to be an integer
height <- as.integer(442)
class(height)
object.size(height)

height <- 442.0
class(height)

# Character
height <- "really tall"
class(height)


# Convert to different types


# Convert numeric to integer
a <- 5
a <- as.integer(a)

# Convert character to numeric
a <- "5"
a <- as.numeric(a)

# Convert numeric to character
a <- 5
a <- as.character(a)


### Data Structures

#### Vectors in R

x <- c(4, 1, 3, 8, 6, 7, 5, 3, 0, 9)
x


##### Subsetting Vectors: allows you to extract specific elements from a vector.

x[1] ## first element
x[1:5] ## first 5 using the colon


##### Vector Operations
y <- 1:10
x + y
1 / x



#### Factors: They represent categorical variables:

d <- factor(c("A", "A", "B", "C", "A", "B"))
d


#### The "paste" Function: combines character strings:s


f <- paste("x", 1:5, sep = "")
f

#### Matrices: they are two-dimensional arrays in R:

mat <- matrix(c(1:9), ncol = 3, byrow = TRUE)
mat


##### Subsetting Matrices: involves specifying both row and column indexes.

mat[1, 1]
mat[1, ]


#### Lists: are versatile R objects, able to hold elements of various classes.


l <- list(3, rep(0, 3), matrix(c(1:4), ncol = 2))
l



##### Indexing Lists

l[[3]]
l$three



#### Data Frames in R: combine properties of matrices and lists, suitable for data analysis

df <- data.frame(V1 = 1:10, V2 = rep(1, 10), V3 = seq(1, 20, 2))
df

##### Subsetting Data Frames

df[,1]
df[1,]


#### Summary and Table Functions

summary(df)
table(df$V3)


##########################
##### Do it yourself #####
##########################


# 1. Assign an a value of 30 to an object named age. Check it's class. 

age <- 30
class(age)

# 2. Force the object created in part 1 to be an integer. Check it's class

age<-as.integer(30)
class(age)


# 3. Convert the following object from character to numeric
w <- "55"
w <- as.numeric(w)
w

# 4. Convert the following object from numeric to character

m <- 55.5
m <- as.character(m)
m


# 5. Create a vectors named s with the following numbers (in that order): 11, 2, 9, 8, 10, 9, 0

s <- c(11, 2, 9, 8, 10, 9, 0)
s

# 6. Extract the third element from vector s (in part 5) by subsetting the vector.

s[3]


# 7. Extract the second to the fifth element from vector s (in part 5) by subsetting the vector.

s[2:5]


# 8. Create a vector named b of 7 elements that go from 1 to 7. 

b <- c(1:7)
b

# 9. Multiply vectors s and b and save it as an object named q. Notice how the multiplication is performed?

q = s * b

q
# 10. Create a vector named h with the "Paste" function such that the elements names are 3w, 4w, 5w, ..., 10w


h <- paste("w", 3:10, sep="")
h


# 11. Create a matrix named matx that has 4 columns with the strings of values from 1 to 12 by column

matx <- matrix(c(1:12), ncol=4, byrow="false")
matx

# 12. Extract the element in column 3 and row 2 from matrix matx  (in part 11) by subsetting the matrix.

matx[3, 2]

# 13. Extract column 4 from matrix matx  (in part 11) by subsetting the matrix.

matx[ ,4]

# 14. Extract row 3 from matrix matx  (in part 11) by subsetting the matrix.

matx[3, ]

# 15. Extract row 4 from matrix matx  (in part 11) by subsetting the matrix.

matx[4, ]
# There isn't a fourth row...

# 16. Create a list named g such that the first element is a vector (named v) of three 4's, the second element 
#     (named j) is a vector with the number 8, and the third element is a matrix (named n) that has elements of
#      2 to 7 with 3 columns. 

g <- list(
 v <- rep(4, 3),
 j <- c(8),
 n <- matrix(c(2:7), ncol=3, byrow="true")
)
g

# 16. Create a dataframe of your choice with 3 variables.
df <- data.frame(var1 <- c(1:32), var2 <- matrix(c("a", "b", "c", "d"), ncol=2, byrow="true"), var3 <- "Nathan")
df

# 17. Summarize and create a frequency table for your second column in your data frame. 
summary(df[ ,2])
