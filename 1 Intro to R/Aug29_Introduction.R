#---------------------------#
#--------- SDS 313 ---------#
#---- Introduction to R ----#
#------ Aug. 29, 2024 ------#
#---------------------------#

#
# What we'll cover today:
#
# 1. Assigning objects and using functions
# 2. Logical indexing
# 3. Importing and exporting data
# 4. Subsetting 
# 5. Installing external packages
#


#
# 1. Assigning objects and using functions
#

#Submit a line to send to the Console to evaluate:
5+2


#A first look at functions:

abs(-5)
sqrt(2)

round(sqrt(2),2)

cos(pi)


#Help files
?sqrt


#Use the assign arrow <- to define objects

#Values:
a <- 4
a

a+2


#Vectors: a series of values that are all the 
#same type (number, character, or logical)

#Numeric vectors:
x1 <- c(1,2,3,4,5)


#Sequences and reps
x2 <- 1:10
x3 <- seq(0,100,25)
x4 <- rep(-1,10)


#Character vectors:
y1 <- c('blue','green','blue','red','red','blue')

#Logical vectors
z1 <- c(TRUE,TRUE,FALSE)


#Some useful vector functions:
sum(x1)
sum(z1)

mean(x2)
sd(x2)
fivenum(x2)

length(y1)
table(y1)



#Environment management

#Lists objects currently in working memory:
ls()

#Removes a specified object from environment:
rm(list='x1')

#Will clear entire environment:
rm(list=ls())




#
# 2. Logical indexing
#

#Use [ ] to index an object:
x <- 10:20
x[5]
x[5:8]

#Logical indexing (pull out cases based on criteria)
x>15
x[x>15]

#which() returns the indices where a statement is true
a <- c(10,5,2,-7,12)
which(a<0)



#
#Group Exercise A:
#   Run this code to assign a vector 'y' 
#   containing 10 random numbers
#   between -1 and 1:

y <- runif(10,-1,1)

#
#1. Display all of the values in 'y' that 
#   are negative.
#
#2. Without counting them, find the number 
#   of values in 'y' that are within 0.1 units 
#   of zero.
#
#3. Take all of the negative values in 'y'
#   and store them in a new vector named with
#   your favorite food.  Display the square
#   of all of the values in your new vector.
#





#
# 3. Importing data
#


#Current working directory
getwd()

#Change working directory - must use quotes!
setwd('../desired path/')


#Importing data: use .csv format if possible
survey <- read.csv('SDS313_StudentSurvey.csv')


#Data frames: Call a variable by using dfname$varname:
survey$R

table(survey$R)

mean(survey$Books)

mean(survey$Tacos)



#
# 4. Subsetting
#


#Indexing a dataframe: [row,column]
survey[19,4]

survey[19,]

survey$Video_games=='Yes'

#Pull out students who play video games
survey[survey$Video_games=='Yes',]

Gamers <- survey[survey$Video_games=='Yes',]




#Exporting

write.csv(Gamers, file="SDS313_Gamers.csv")



#
#Group Exercise B:
#
#1. What is the mean number of movies seen last
#   year by students in our class?
#
#2. Create a subset of students who saw 20 or more
#   movies in the past year.
#
#3. How many students in your subset for #2 grew 
#   up outside of Texas?
#
#4. Display the album names that were last bought
#   by students in your subset for #2.
#





#External Packages

#Using external packages is a two-step process:
#1. Install the package (only need to do this once)
#2. Call the library (must repeat with every new session of R)

install.packages('psych')
library(psych)

describe(survey$Movies)


#
#Before next class: install the packages 
#                   necessary for next week's
#                   lectures on visualization.
#

