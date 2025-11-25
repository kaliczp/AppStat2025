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

## Visual diagnostic of regression
plot(BpRain.lm)

## Import temperature from the same source as precipitation
BpTemp <- read.table("ta_h_Budapest_18702023.csv", sep = ";", header = TRUE)
## Regression as above
BpTemp$Index <- 1:nrow(BpTemp)
BpTemp.lm <- lm(ta ~ Index, BpTemp)
summary(BpTemp.lm)

## Plot as before
plot(ta ~ Index, BpTemp, type ="l", xaxs = "i")
abline(BpTemp.lm, col = "red")

## Check increase
BpTemp.lm$coefficients[2]*36500

## Install xts package
install.packages("xts")
library(xts) # load package

## Create real date based on firt colum
BpDatum <- as.Date(as.character(BpTemp[,1]), format = "%Y%m%d")
head(BpDatum) # check the conversion
