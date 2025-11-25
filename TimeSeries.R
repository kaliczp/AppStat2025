## Clean import of dataset
BpRain <- read.table("r_h_Budapest_18702023.csv", sep = ";", header = TRUE)

## Linear regression based on generated Index
BpRain$Index <- 1:nrow(BpRain) # generate index column
BpRain.lm <- lm(r ~ Index, BpRain) # ?lm read about linear model (regression) in manual page
?lm # do not forget the manual page
summary(BpRain.lm) # main statistics about regression

## Visualise
plot(r ~ Index, BpRain, type = "h", xaxs = "i")
abline(BpRain.lm, col = "red")
