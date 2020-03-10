# setwd("D:\\College - Year 4\\Sem 2\\Data Mining\\Team Project\\Git_Team_Data_Mining")
# raw_data <- ("Raw Data\\ireland-historical-news\\irishtimes-date-text") 

#==================================================
# ORIGINAL DATASET SOURCE:
#   https://www.kaggle.com/therohk/ireland-historical-news#w3-latnigrin-text.csv 

# Assiging data to raw_data
# WARNING : It may take slow to load the data due to targe-size dataset (47 mb)
raw_data <- read.csv("https://raw.githubusercontent.com/penmaypa/raw_dataset/master/ireland-historical-news/irishtimes-date-text.csv" , sep=",")

# Raw Data should be seperated and use copy for modification
data <- raw_data

#=====================================
#   PROCESS: DATA CLEANSING :
#=====================================

# Check that the the data is a list - dataframe
typeof(data)
class(data)

# Check for missing/invaled values:
#   if the result is: integer(0), then there is no missing value.
grep(
  TRUE,
  is.na(data)
)

# See what type of data the row:
class(data$headline_text)
# > factor

# Need to change the headline_text variable from factor to character
data$headline_text <- as.character(data$headline_text)

#=====================
# TASK: Reformatting the date from integer to date format:

#   Seperate the date column
data <- raw_data
format_date <- c()

# format_date$raw <- c(data$publish_date)
head(data[1:10,])

raw_date <- data$publish_date[1:10]
raw_date <- data.frame(raw_date)
head(raw_date)

format_date <- c()
head(format_date)

format_date<- raw_date
head(format_date)

sample_date <- c()
sample_date <- rbind(format_date)
head(sample_date)


sample_date$raw_date <- as.character(c(sample_date$raw_date))
head(sample_date)

# dates <- c(29367, 37078)
# betterDates <- as.Date(dates,
#                        origin = "1904-01-01")
date <- data.frame(c())
date<- as.Date(sample_date$raw_date,"%Y%m%d")
head(date)

#date<- data.frame(date)
head(date)

date2 <- data.frame(c())
date2 <- data.frame(
  old_date=c(sample_date$raw_date),
  new_date=date
)
head(date2)

date2 <-data.frame(date2)
date2 <- rbind(sample_date$raw_date, date$date)
head(date2)

data2 <- data.frame(date2)
head(date2)
