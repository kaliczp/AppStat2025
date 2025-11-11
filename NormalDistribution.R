my_norm <- rnorm(100) # 100 generated standard normal distr. data
quantile(my_norm) # Calculate quantiles
median(my_norm) # median calculation
mean(my_norm) # mean calculation

set.seed(10) # set the initial state of random number genration

hist(my_norm) # Histogram
hist(my_norm, col = "#af8dc3")
boxplot(my_norm) # Boxplot
## play with figure colors
boxplot(my_norm, col = NULL) # no color
boxplot(my_norm, col = "pink") # no color
boxplot(my_norm, col = "#fc8d59") # from https://colorbrewer2.org/
IQR(my_norm) # Inter Quartile Range
summary(my_norm) # Summary Tkey five numbers + mean

## Lets look some examples in one row separated with semicolons
 my_norm <- rnorm(100);boxplot(my_norm);summary(my_norm)

my_ext <- c(my_norm,100)
summary(my_ext)
boxplot(my_ext)

## Custom normal distribution
norm10.2 <- rnorm(100, mean = 10, sd = 2) # customised
hist(norm10.2)
boxplot(norm10.2)

## Q-Q plot
qqnorm(norm10.2) # the plot
qqline(norm10.2) # and line to help interpretation

qqnorm(my_ext)
qqline(my_ext)

## Compare two samples distribution
qqplot(my_ext, my_norm)
