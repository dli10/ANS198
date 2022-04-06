# get path to working directory
getwd()

# set working directory
setwd("/Users/donna/Documents/ans198")

# list files in working directory
list.files()

# read data
dogs = readRDS("dogs_full.rds")

# get number of columns/rows
ncol(dogs)
nrow(dogs)

dim(dogs)

# what are the column names
colnames(dogs)

rownames(dogs)

# what is the overall structure of the data
str(dogs)

# get top 6 rows
head(dogs)

# get top 10 rows
head(dogs, 10)

# get bottom 6 rows
tail(dogs)

# get statistical summaries
summary(dogs)

# other summary statistics
?mean
?median
?sd
?var

mean(c(1,2,3))

# we need to extract a single column. we can use $ to get a column by name
dogs$height

sd(dogs$height)

# many functions have an na.rm parameter, which you can use to tell R to ignore 
# missing values
sd(dogs$height, na.rm = TRUE)

# you can check for NAs with:
is.na(dogs$height)

# you can get frequency counts for a categorical variable with table()
table(dogs$group)

# TRUE/FALSE values are categories, so you can use table() to count the number
# of NAs in a vector or column
table(is.na(dogs$height))

# there's another way to subset that's more general than $
dogs[1,] # row 1, all columns

is.na(dogs[,1])

# Q: How can we find out the row numbers for rows with NAs?
#
# A: Use which() to find positions of TRUEs in a logical vector.
which(is.na(dogs$height))
