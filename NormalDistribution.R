my_norm <- rnorm(100) # 100 generated standard normal distr. data
quantile(my_norm) # Calculate quantiles
median(my_norm) # median calculation
mean(my_norm) # mean calculation

set.seed(10) # set the initial state of random number genration

hist(my_norm) # Histogram
boxplot(my_norm) # Boxplot
summary(my_norm) # Summary Tkey five numbers + mean

my_ext <- c(my_norm,100)
summary(my_ext)
boxplot(my_ext)
