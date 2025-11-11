my_norm <- rnorm(100) # 100 generated standard normal distr. data
quantile(my_norm) # Calculate quantiles
median(my_norm) # median calculation
mean(my_norm) # mean calculation

set.seed(10) # set the initial state of random number genration

hist(my_norm) # Histogram
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
