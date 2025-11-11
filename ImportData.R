## We use a dataset from odp page, from climate/homogenized_data/station_data_series/from_1870/precipitation_sum/
dir() # Control your dataset is available
help.start() # There is an import/export manual
read.table("r_h_Budapest_18702023.csv") # Drops an error
BpRain <- read.table("r_h_Budapest_18702023.csv", sep = ";") # with separator declare
str(BpRain)
BpRain <- read.table("r_h_Budapest_18702023.csv", sep = ";", header = TRUE) # with separator declare

summary(BpRain$r)
boxplot(BpRain$r)

## Index the values greater than zero
BpRainyDays <- BpRain[BpRain$r > 0, "r"]
boxplot(BpRainyDays)

## Histogram and density
