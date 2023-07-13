#Create Vectors
id <- c(10,11,12)
id
name <- c('Ken','John', 'Mutinda')
dob <- c('1990-01-16', '1992-03-24', '1998-12-12')

#its data frame
df <- data.frame(id,name,dob)
df

#Create Data Frame
dfAq <- data.frame(
  Id = c(01, 02, 03, 04),
  Name = c('Peter', 'Don', 'Brayo','Kelvin'),
  DOB = as.Date(c('1990-01-16', '1992-03-24', '1998-12-12', '1987-05-16')),
  row.names = c('row1','row2','row3','row4')
)
dfAq

#Importing a csv file.by file choose
dfAq
df3 = read.csv(file.choose(), header = TRUE, sep = ".")
df3

#Importing a csv file by reading from the work space
table1=read.csv('abc')
table1<-read.csv('iris')

#Importing a csv file by file directory.
file <- "D:/R/iris.csv"
file
data11 <- read.csv(file = "D:/R/iris.csv", header = TRUE, sep = ".")
data11
dfAq
dfAq['row2',]

# Create DataFrame
dfgo <- data.frame(
  id = c(10,11,12,13,14,15,16,17),
  name = c('sai','ram','deepika','sahithi','kumar','scott','Don','Lin'),
  gender = c('M','M','F','F','M','M','M','F'),
  dob = as.Date(c('1990-10-02','1981-3-24','1987-6-14','1985-8-16',
                  '1990-10-02','1981-3-24','1987-6-14','1985-8-16')),
  state = c('CA','NY',NA,NA,'DC','DW','AZ','PH')
)
dfgo

#Selecting Rows by index
dfgo[3,]
 #Selecting Rows by list of Index Values
dfgo[c(3,4,6),]

#Selecting the first three rows
head(dfgo,3)
 #Selecting the last three rows
tail(dfgo,3)
tail(dfgo,3)

#Selecting rows that equal to a condition
dfgo[dfgo$gender == 'M',]

#Selecting rows by multiple conditions
dfgo[dfgo$gender == 'M' & dfgo$id >15,]

#Selecting rows based on list
dfgo[dfgo$id %in% c (13, 14, 15),]

#Install dplyr
install.packages('dplyr')

#Load dplyr package
library(dplyr)

#using dplyr::filter
dplyr::filter(dfgo, state %in% c("CA", "AZ", "PH"))

#SELECTING COLUMNS

#selecting columns by name
dfgo[,"name"]
dfgo[,'name']

#selecting columns from list
dfgo[, c('name', 'gender')]

#library('dplyr)

#dplyr - selecting columns by list of index or position
df %>% select(c(2,3))

#Selecting columns by index range
df %>% select(2:3)

#Selecting columns except name & gender
dfgo %>% select(-c('name',"gender"))
dfgo %>% select(starts_with('gen'))

#selecting all numeric columns
dfgo %>% select_if(is.numeric)

#Create a dataframe
books = data.frame(id=c(11,22,33,44,55),
                   pages=c(32,45,33,22,56),
                   name=c('spark','python','r','java','jsp'),
                   chapters=c(76,86,11,15,7),
                   price=c(144,553,321,567,890))
print(books)
library("dplyr")

books %>%
  rename("id" = "C1")
books
#Renaming multiple files using dplyr-rename
books <- books %>%
  rename('id' ='no',
         'pages' = 'karatasi',
         'name'= 'jina')
plot(df)
my_dataframe=data.frame(id=c(11,22,33,44,55),
                        pages=c(32,45,33,22,56),
                        name=c("spark","python","R","java","jsp"),
                        chapters=c(76,86,11,15,7),
                        price=c(144,553,321,567,890))
print(my_dataframe)
install.packages('dplyr')
library("dplyr")
my_dataframe %>%
  rename("id" = "c1")
my_dataframe <- my_dataframe %>%
  rename('id' = 'c1')
print(my_dataframe)

colnames(my_dataframe)[2] = "c2"
print(my_dataframe)

library("dplyr")
#Renaming using rename() to upper
my_dataframe <- my_dataframe %>%
  rename_with(toupper)
print(my_dataframe)

install.packages('data.table')
library('data.table')
#Renaming all columns
setnames(my_dataframe, new= c('c1', 'c2', 'c3', 'c4', 'c5'),
         old = c('id','pages','name','chapters','price'))



#Replacing values
#create dataframe emp

emp <- data.frame(id = c(1,2,3,NA),
                  address = c('Njoro', 'Lanet', 'Eldoret', ''),
                  work_address = c('Posta', NA,'Highway', 'Kaptom'))
emp

df <- data.frame(id=c(1,2,3,NA),
                 address=c('Orange St','Anton Blvd','Jefferson Pkwy',''),
                 work_address=c('Main St',NA,'Apple Blvd','Portola Pkwy'))

df

#Replacing string with another string on a single column
df$address[df$address == 'Orange St'] <- 'Portola Pkwy'
df

#Deleting Rows
df2 <- df[-4,]
df2
df2 <- df[-c(4,5,1),]
df2
 #deleting rows by name
df2 <- df[!(row.names(df) %in% c("1", "2")),]
df2

#Removing rows with column id less than equal 2
df2 <- subset(df, id > 2)
df
df2


#Removing a column
#prepare a df
dfb = data.frame(id=c(11,12),
                pages = c(32,45),
                name= c("spark", "python"),
                chapters=c(76,86),
                price=c(144,553))
print(dfb)

#removing a column by index
dfb2 <- dfb[, -2]
dfb2

#removing multiple columns
dfb2 <- dfb[, -c(2,3)]
dfb2

#Adding a row to df
dfr= data.frame(id=c(11,22),
                pages=c(32,45),
                name=c('spark', 'python'))
dfr

#Adding row to a df by converting all types to string
dfr[nrow(dfr) + 1,] <- c(33, 50, "java")
dfr

#Adding row using rbind()
new_row = list(id= 33, pages=50, name="java")
df3=rbind(dfr,new_row)
df3

#Adding a column to a dataframe
#Consider dfr
dfr
dfc <- dfr[-3,]
dfc

#Adding columns using the $ notation
chapters = c(76,86)
chapters <- c(76,86)
dfc$chapters <- chapters
dfc
 #Adding columns using the cbind()
#Using the cbind we can add as many columns as needed
chapters = c(76,86)
dfcc <- cbind(dfc, chapters)
dfcc

#Adding a new column to an existing column
dfc$new_pages <- dfc$pages - 2
dfc

#We can also use tidyverse
install.packages("tidyverse")
library("tidyverse")

#Using add_column()
dfcc <- dfc %>%
  add_column(add_column = "constant_value")
dfcc

#Sorting df rows by column value
# Create Data Frame
books=data.frame(id=c(11,22,33,44,55),
              name=c("spark","python","R","jsp","java"),
              price=c(144,NA,321,567,567),
              publish_date= as.Date(
                c("2007-06-22", "2004-02-13", "2006-05-18",
                  "2010-09-02","2007-07-20"))
)
books

#order()syntax
order(data, na.last = TRUE, decreasing = FALSE)

#sort df
books2 <- books[order(books$price),]
books2

#sort by multiple columns
books2 <- books[order(books$price, books$name),]
books2

#sorting by descending order
books2 <- books[order(books$price, decreasing = TRUE),]
books2

#sorting by having Na first
books2 <- books[order(books$price, decreasing = TRUE, na.last = FALSE),]
books2

#using dplyr
library('dplyr')
books2 <- books %>% arrange(price)
books2

books2<- books %>% arrange(desc(price))
books2

#using data.table
library("data.table")
books2 <- setorder(books,price)
books2

#Joining or Merging df
# Create Emp Data Frame
emp_df=data.frame(
  emp_id=c(1,2,3,4,5,6),
  name=c("Smith","Rose","Williams","Jones","Brown","Brown"),
  superior_emp_id=c(-1,1,1,2,2,2),
  dept_id=c(10,20,10,10,40,50)
)

# Create dept Data Frame
dept_df=data.frame(
  dept_id=c(10,20,30,40),
  dept_name=c("Finance","Marketing","Sales","IT")
)
emp_df
dept_df

#INNER JOIN/NATURAL JOIN
#When we apply Inner join on our data sets,
#it drops dept_id 50 from emp and dept_id 30 from dept data sets.
#Below is the result of the above Join expression.

df2 <- merge(x=emp_df, y=dept_df, by= "dept_id")
print(df2)

#similarly use dplyr
library(dplyr)
df2 = emp_df %>% inner_join(dept_df, by= "dept_id")
df2

#LEFT OUTER JOIN
#From our dataset, dept_id 50 doesn’t have a record on dept dataset hence
#this record contains NA on dept columns (dept_name & dept_id).
#and dept_id 30 from dept dataset dropped from the results

df2 <- merge(x=emp_df, y=dept_df, by = "dept_id", all.x = TRUE)
df2

#similarly use dplyr
library(dplyr)
df2 = emp_df %>% left_join(dept_df, by = 'dept_id')
df2

#RIGHT OUTER JOIN
#the right dataset dept_id 30 doesn’t have it on the left dataset emp hence
#this record contains NA on emp columns. and dept_id 50
#dropped as a match not found on left.

df2 <- merge(x=emp_df, y = dept_df, by = "dept_id", all.y = TRUE)
df2

library(dplyr)
df2 = emp_df %>% right_join(dept_df, by = "dept_id")
df2

#FULL OUTER JOIN
#From our emp dataset’s dept_id with value 50 doesn’t have a record on
#dept hence dept columns have NA and dept_id 30 doesn’t
#have a record in emp hence you see NA on emp columns.

df2 <- merge(x = emp_df, y = dept_df, by = "dept_id", all = TRUE)
df2

library(dplyr)
df2 = emp_df %>% full_join(dept_df, by = "dept_id")
df2

#CROSS JOIN
df2 <- merge(x = emp_df, y = dept_df, by = NULL)
df2

#LEFT SEMI JOIN
# join returns all columns from the left DataFrame
#and ignores all columns from the right dataset

library(dplyr)
df2 = emp_df %>% semi_join(dept_df, by = "dept_id")
df2

#LEFT ANTI JOIN
#left anti join returns only columns from the left DataFrame
#for non-matched records.

library(dplyr)
df2 = emp_df %>% anti_join(dept_df, by = "dept_id")
df2

#CONVERTING DF TI NUM TYPE
#we either use as.numeric() or using #transform with as.numeric()

#create a df
random_numbers = data.frame(column1 = c("2","1",'3','4','5'),
                            column2 = c('1','2','3','5','4'),
                            column3=c('56','23','45','67','43'))

print(random_numbers)

#return the datatype of each column
print(sapply(random_numbers, class))

#converting column1 column type to numeric
random_numbers$column1 = as.numeric(as.character(random_numbers$column1))

print(sapply(random_numbers, class))

#using transform()
print(sapply(transform(random_numbers,column1 = as.numeric(column1)), class))

#REPLACING NA WITH ZERO
#Create dataframe with 5 rows and 3 columns
myguys=data.frame(id=c(2,1,3,4,NA),
                        name=c('sravan',NA,'chrisa','shivgami',NA),
                        gender=c(NA,'m',NA,'f',NA))
print(myguys)

#Replacing na values with 0 using is.na()
myguys[is.na(myguys)] = 0
myguys

#Replacing using replace()
#the first parameter is the input data frame.
#the second parameter takes is.na() method to check if it is NA
#the last parameter takes value 0, which will replace the value present
#in the second parameter
myguys <- replace(myguys, is.na(myguys), 0)
myguys

#REPLACING NA WITH ZERO USING DPLYR
# Create data frame with numeric columns
mybooks = data.frame(pages=c(32,45,NA,22,NA),
                        chapters=c(NA,86,11,15,NA),
                        price=c(144,553,321,567,NA))
mybooks

#Replace NA using coalesce() from dplyr
library('dplyr')
mybooks <- mutate_all(mybooks, ~coalesce(.,0))
mybooks

#Replace NA using replace_na() from tidyr
library('dplyr')
library("tidyr")
mybooks <- mutate_all(mybooks, ~replace_na(.,0))
mybooks

#Replace NA using setnafill() from data.table
library('data.table')
mybooks <- setnafill(mybooks, fill = 0)
mybooks

mybooks <- setnafill(mybooks, fill = 2)
mybooks
#it can fill to zero as seen above.

#Update NA with zero by specific column Name
library('dplyr')
mybooks1 = data.frame(pages=c(32,45,NA,22,NA),
                     chapters=c(NA,86,11,15,NA),
                     price=c(144,553,321,567,NA))
mybooks1 <- mybooks1 %>% mutate(pages = coalesce(pages, 0))
mybooks1

#Replace on multiple columns
library("dplyr")
mybooks2 = data.frame(pages=c(32,45,NA,22,NA),
                     chapters=c(NA,86,11,15,NA),
                     price=c(144,553,321,567,NA))
mybooks2 <- mybooks2 %>%
  mutate(pages = coalesce(pages, 0),
         chapters = coalesce(chapters, 0))
mybooks2

#Replacing only numeric columns
library('tidyr')
library('dplyr')
mybooks3 = data.frame(pages=c(32,45,NA,22,NA),
                      chapters=c(NA,86,11,15,NA),
                      price=c(144,553,321,567,NA))
mybooks3 <- mybooks3 %>% mutate_if(is.numeric, ~replace_na(.,0))
mybooks3

#NB:If you have data with numeric and characters most of the above examples work
#without issue. But, if you have factor values, first you need to convert them to a
#character before replacing NA with zero.

#change factors to character type
mybooks[i] <- lapply(mybooks{i}, as.character)

#Replace NA with 0
mybooks[is.na(mybooks)] <-0

#change character columns back to factors
mybooks[i] <- lapply(mybooks[i], as.factor)

#Replacing NA with empty string

students = data.frame(name = c("sravan", NA, "chrisa", "shivgami", NA),
                      gender = c(NA, 'M', NA, 'F', NA))
students

#Replacing using is.na()
students[is.na(students)]<- ""
students
#using dplyr
library("dplyr")
students <- students %>% replace(is.na(students), "")
students

#Replacing NA with Empty string only on Character columns
#Create dataframe
my_df=data.frame(
  id=c(2,1,3,4,NA),
  name=c('sravan',NA,'chrisa','shivgami',NA),
  gender=c(NA,'m',NA,'f',NA))
my_df

library('dplyr')
library('tidyr')

#Replace only character columns
my_df <- my_df %>% mutate_if(is.character, ~replace_na(., ""))
my_df

#Replacing on selected multiple columns
library("dplyr")
library("tidyr")
my_df <- my_df %>% mutate_at(c('name','gender'), ~replace_na(., ""))
my_df

#Replacing on selected multiple index
library('dplyr')
library("tidyr")
my_df <- my_df %>% mutate_at(c(2,3), ~replace_na(., ""))
my_df

#REMOVING DUPLICATE ROWS
# Create dataframe
udf=data.frame(id=c(11,11,33,44,44),
              pages=c(32,32,33,22,22),
              name=c("spark","spark","R","java","jsp"),
              chapters=c(76,76,11,15,15),
              price=c(144,144,321,567,567))
udf

#REMOVING DUPLICATE ROWS
udf2 <- udf[!duplicated(udf),]
udf2

#REMOVING DUPLICATES BY SINGLE COLUMN
udf2 <- udf[!duplicated(udf$id),]
udf2

#REMOVING DUPLICATES ON SELECTED COLUMNS
udf2 <- unique(udf[, c('id', 'pages', 'chapters', 'price')])
udf2

#REMOVING DUPLICATES USING DPLYR

library(dplyr)
udf2 <- udf %>% distinct()
udf2
#Here, we use the infix operator %>% from magrittr, it passes the left-hand side of
#the operator to the first argument of the right-hand side of the operator. For
#example, x %>% f(y) converted into f(x, y) so the result from the left-hand side
#is then “piped” into the right-hand side.

#REMOVING DUPLICATES ON SPECIFIC COLUMNS
udf2 <- udf %>% distinct(id, .keep_all = TRUE)
udf2

#Removing duplicates on selected columns
udf2 <- udf %>% distinct(id,pages, .keep_all = TRUE)
udf2

#Removing duplicates using data.table
library(data.table)
dt <- data.table(udf)
dt

#Removing duplicates on specific column
dt2 <- unique(dt, by = 'id')
dt2

#HOW TO REMOVE ROWS WITH NA
#If a row contains some NAs we use
#na.omit()
#complete.cases()
#rowSums()
#drop_na()

#If a row contains all NA, these two methods are used.
#rowSums() with ncol
#filter() with rowSums()

#create dataframe with 5 rows and 3 columns
aqua=data.frame(id=c(2,1,3,4,NA),
              name=c('sravan',NA,'chrisa','shivgami',NA),
              gender=c(NA,'m',NA,'f',NA))
aqua

#Removing Rows with some NA using na.omit()
na.omit(aqua)
#or
print(na.omit(aqua))

#Removing Rows with some NAs using complete.cases()
aqua[complete.cases(aqua),]

#Removing rows with some NAs using rowSums()
#In this method, we will use rowSums() to remove rows that contain some NA values.
#It will take is.na() parameter that checks if the value equals NA, if it is TRUE,
# then rowSums() is used to calculate the sum of rows. If it is equal to 0.

aqua[rowSums(is.na(aqua)) == 0,]

#Removing rows with NAs using drop_na()
#drop_na() will drop the rows that contain at least one NA value
#it is available in tidyr package

library("tidyr")
aqua %>% drop_na()

#REMOVING ROWS CONTAINING ALL NAs
# 1. Using rowSums() with ncol
#Here, we are comparing rowSums() count with ncol() count, if they are not equal,
#we can say that row doesn’t contain all NA values. Hence the row that contains all NA
#will not be selected. When the counts are equal then the row is considered with all NA
#values and the row is considered to remove from the R dataframe.

aqua[rowSums(is.na(aqua)) != ncol(aqua),]

#Deleting rows with all NAs using filter() with rowSums()
#It is similar to the above method, we are comparing rowSums() count with ncol()
#count, if they are not equal, we can say that row doesn’t contain all NA values. Hence
#the row that contains all NA will not be selected. To do this, we have to use the
#filter() method.
library("dplyr")
print(filter(aqua, rowSums(is.na(aqua)) != ncol(aqua)))


