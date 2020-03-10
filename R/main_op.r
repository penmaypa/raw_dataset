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

#===========================
# TASK: Reformatting the date from integer to date format:

#   Seperate the date column
data <- raw_data

# Copying the column to a seperate vector
raw_date <- data$publish_date

# Setting the date to a character
raw_date <- as.character(raw_date)

# From character to a string
real_date <- as.Date(raw_date,"%Y%m%d")

# Store at a new dataframe
df1 <- data.frame(c())
df1<-data.frame(
  real_date=real_date
)

# Combine it with the real data
data$real_date <- df1$real_date

#Re-arrange column
data <- data[c(1,4,2,3)]


#====================
# EXPORT data to csv
write.csv(data,file="D:\\College - Year 4\\Sem 2\\Data Mining\\Team Project\\Git_Team_Data_Mining\\Modified Data\\ireland_headlines_v2.csv", row.names = FALSE)


#=================================
# FILTER data by the dates - latest 30,000

data_x3 <- data[order(real_date, decreasing=TRUE),]

data_latest_30k <- data_x3[1:30000,]
write.csv(data_latest_30k,file="D:\\College - Year 4\\Sem 2\\Data Mining\\Team Project\\Git_Team_Data_Mining\\Modified Data\\ireland_headlines_latest30k.csv", row.names = FALSE)


