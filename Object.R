## Create an objet called a and put 1 into it
a = 1
## Official is < and - the same operator
a <- 1
## look into the object
a
## List of objects
ls()
## Our second object
b <- 2
## Combine objects
my_con <- c(a, b)
## Manual pages, every funciton and system part has a manual page
?c # man. page for c() function
?ls # man. pag for ls()
c(1, 7:9) # from the Example of ?c
?":" # Man. page of :
1:100 # Explore the element number in the firs pos [1]
my_vector <- c(a, 3:15, b)
str(my_vector) # structure gives a short description see ?str
rm(a) # remove an object
summary(my_vector) # summary form an object object-oriented summary
summv <- summary(my_vector) # save the output
### Indexing
my_vector[1] # First element of my_vector
my_vector[10] # 10th element of my_vector
summv[1] # the summary result is a vector indexable
summv[6] # 6th element

### Basic types
## Until now we used numeric type
1:10 # sequence form 1 to 10
-3:300 # sequence rom -3 until 300
seq(-3, 300, 3) # sequence as above but increased by 3
## help of a function
?seq
help(seq)
seq() # there are default values for arguments
seq(to = 10) # you can use any argument with name in any order
seq(TO = 10) # R is case-sensitive you need carefully use up and down cases
seq(to = 10, from = 1) # you can give in any order arguments with name
seq(10 ,1) # If you did not give a name these are interperted in the default order see in manual page
seq.int(1,10,1) # for integers (whole numbers)
args(seq.int) # gives arguments list besides man. page. sometimes no result in like args(seq) 
seq(1, 10, by = 0.5) # seq works with real numbers

## Different types
NULL # Nothing mainly in programming
NA # nothin or Not Available in data
NaN # not a number, result of calulatin
Inf # result of 1/0
## Logical types
TRUE
FALSE # These are result of an expression
a > 0
a > 100
ls() # before you contiune your work let's check existing objects
## Character type
month.name # part of the system, there are many object in R
?month.name
"An exaple"
'Another example' # You can use any kind of apostrophes
fruits <- c("apple", "orange", "banana")

## Indexing and vectorised execution
my_vector[2] # second member of the vector
my_vector[2:4] # elements from 2 until 4
my_vector[c(1,3,5)] # First, 3rd and 5th elements
## Vectorised investigation
my_vector > 5 # elements bigger then 5
my_vector + 5 # add 5 to all elements
## Indexing with logical expression
my_vector[my_vector > 5] # Elements bigger then 5

## Random numerical vector with normal distribution
rnorm(10) # 10 numbers follw normal distribution
?rnorm # man. page
my_norm <- rnorm(20)
my_norm[my_norm >= 0]
