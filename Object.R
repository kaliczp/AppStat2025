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
