library(dslabs)
## Code to compute solution to quadratic equation of the form ax^2 + bx + c
## define the variables
a <- 2
b <- -1
c <- -4

## now compute the solution
solution_1 <- (-b + sqrt(b^2 - 4*a*c) ) / ( 2*a )
solution_2 <- (-b - sqrt(b^2 - 4*a*c) ) / ( 2*a )
print(solution_1)
print(solution_2)

print(log(1024, base = 4))

## check sum of first n integers 
n <- 1000
y <- seq(1, n)
sum(y)
print(n*(n + 1) / 2)

## check the four calculations with various x inputs  
x <- 100
print(log(10^x))
print(log10(x^10))
print(log(exp(x)))
print(exp(log(x, base = 2)))


data(murders)
class(x)
data(murders)
class(murders)
str(murders)
head(murders)
names(murders)
murders$population
class(murders$pop)
class(murders$state)
class(murders$region)
levels(murders$region)
region <- murders$region
value <- murders$total
region <- reorder(region, value, FUN = sum)
levels(region)


z <- 3 == 2
z
class(z)

## Exercise 3.6
library(dslabs)
data(murders)
str(murders)
a <- murders$abb
class(a)
data("murders")
b <- murders[,2]
identical(a, b)
class(murders$region)
length(levels(murders$region)) 
table(murders$region)

rm(a, b, c)
rm(n, x, z)
rm(region, value)
rm(solution_1, solution_2)
## 3.7 Vectors
codes <- c(380, 124, 818)
country <- c("italy", "canada", "egypt")
codes <- c(italy = 380, canada = 124, egypt = 818)
class(codes)
names(codes)
codes <- c("italy" = 380, "canada" = 124, "egypt" = 818)
codes

rm(codes, country)
codes <- c(380, 124, 818)
country <- c("italy","canada","egypt")
names(codes) <- country
codes

seq(1, 10)
country_index <- seq(1, 3)
class(country_index)
codes[1:2]
codes["canada"]
codes[c("egypt","italy")]

x <- c(1, "canada", 3)
class(x)

x <- 1:5
y <- as.character(x)
y
as.numeric(y)


## Exercise 3.9

temp <- c("Beijing" = 35, "Lagos" = 88, "Paris" = 42, "Rio de Janeiro" = 84, "San Juan" = 81, "Toronto" = 30)
temp[1:3]
temp[c("Paris", "San Juan")]
x <- 12:73
y <- seq(1, 99, 2)
length(seq(6, 55, 4/7))
a <- seq(1, 10, 0.5)
class(a)
a <- seq(1, 10)
class(a)
class(1L)

temp <- c(35, 88, 42, 84, 81, 30)
city <- c("Beijing", "Lagos", "Paris", "Rio de Janeiro", "San Juan", "Toronto")
names(temp) <- city
temp


x <- c("1", "3", "5")
y <- as.integer(x)


## 3.10 
x <- c(31, 4, 15, 92, 65)
sort(x)
index <- order(x)
x[index]
x
order(x)

library(dslabs)
data(murders)
sort(murders$total)
ind <- order(murders$total) 
murders$abb[ind]
max(murders$total)
i_max <- which.max(murders$total)
murders$state[i_max]
rm(a, codes, country, country_index, i_max, ind, index, temp, x, y)
## recycling 
x <- c(1,2,3)
y <- c(10, 20, 30, 40, 50, 60)
x+y
rm(x, y)

## Exercise 3.11
library(dslabs)
data("murders")
pop <- (murders$population)
sort(pop)
print(sort(pop)[1])
# Access the `state` variable and store it in an object 
states <- murders$state 
# Sort the object alphabetically and redefine the object 
states <- sort(states) 
# Report the first alphabetical value  
states[1]
# Access population values from the dataset and store it in pop
pop <- (murders$population)
# Sort the object and save it in the same object 
pop <- sort(pop)
# Report the smallest population size 
pop[1]
# Access population from the dataset and store it in pop
pop <- (murders$population)
# Use the command order to find the vector of indexes that order pop and store in object ord
ord <- order(murders$pop) 
# Find the index number of the entry with the smallest population size
ord[1]
# Define the variable i to be the index of the smallest state
i <- which.min(murders$population)
# Define variable states to hold the states
states <- (murders$state)
# Use the index you just defined to find the state with the smallest population
states[i]


ind <- order(murders$pop) 
murders$pop[ind]
min(murders$pop)
i_min <- which.min(murders$pop)
murders$state[i_min]

temp <- c(35, 88, 42, 84, 81, 30)
city <- c("Beijing", "Lagos", "Paris", "Rio de Janeiro", "San Juan", "Toronto")
city_temps <- data.frame(name = city, temperature = temp)
rm(city, temp)

## Store temperatures in an object 
temp <- c(35, 88, 42, 84, 81, 30)
## Store city names in an object 
city <- c("Beijing", "Lagos", "Paris", "Rio de Janeiro", "San Juan", "Toronto")
## Create data frame with city names and temperature 
city_temps <- data.frame(name = city, temperature = temp)
## Define a variable states to be the state names 
states <- (murders$state)
## Define a variable ranks to determine the population size ranks 
ranks <- rank(murders$population)
## Create a data frame my_df with the state name and its rank
my_df <- data.frame(states, ranks)

## Define a variable states to be the state names from the murders data frame

states <- (murders$state)
## Define a variable ranks to determine the population size ranks 
ranks <- rank(murders$population)
## Define a variable ind to store the indexes needed to order the population values
ind <- order(murders$population) 
## Create a data frame my_df with the state name and its rank and ordered from least populous to most 
my_df<-data.frame(states = states[ind],ranks = ranks[ind])
str(my_df)


data("na_example")  
str(na_example)
mean(na_example)
ind <- is.na(na_example)
mean(na_example[!ind])

rm(city, i_min, ind, na_example, pop, ranks, states, temp)

## 3.12 Vectors
library(dslabs)
data("murders")
murder_rate <- murders$total / murders$population * 100000
murders$state[order(murder_rate)]

rm(city_temps)
temp <- c(35, 88, 42, 84, 81, 30)
temp <- (5 / 9) * (temp - 32)
city <- c("Beijing", "Lagos", "Paris", "Rio de Janeiro", "San Juan", "Toronto")
city_temps <- data.frame(name = city, temperature = temp)

x <- 1:100
sum(1 / (x^2))
(pi^2) /6

library(dslabs)
data(murders)
# Store the per 100,000 murder rate for each state in murder_rate
murder_rate <- murders$total / murders$population * 100000
# Calculate the average murder rate in the US 
mean(murder_rate)
 
 
## 3.14 subsetting with logicals
ind <- murder_rate <= 0.71
ind
murders$state[ind]
sum(ind)
west <- murders$region == "West"
safe <- murder_rate <= 1
ind <- safe & west
murders$state[ind]

ind <- which(murders$state == "California")
murder_rate[ind]
murder_rate[which(murders$state == "California")]

ind <- match(c("New York", "Florida", "Texas"), murders$state)
murder_rate[ind]
murder_rate[match(c("New York", "Florida", "Texas"), murders$state)]

c("Boston", "Dakota", "Washington") %in% murders$state

## compare:
match(c("New York", "Florida", "Texas"), murders$state)
which(murders$state%in%c("New York", "Florida", "Texas"))

# Store the murder rate per 100,000 for each state, in `murder_rate`
murder_rate <- murders$total / murders$population * 100000
# Store the `murder_rate < 1` in `low`
low <- murder_rate < 1
which(low)
murders$state[low]
# Create a vector ind for states in the Northeast and with murder rates lower than 1. 
ind <- (murders$region == "Northeast") & low
# Names of states in `ind` 
murders$state[ind]

# Compute the average murder rate using `mean` and store it in object named `avg`
avg <- mean(murder_rate)
# How many states have murder rates below avg ? Check using sum 
sum(murder_rate < avg)

abbs <- c("AK", "MI", "IA")
ind <- match(abbs, murders$abb)
murders$state[ind]


x <- c(2, 3, 5)
y <- c(1, 2, 3, 4)
x%in%y

# Store the 5 abbreviations in `abbs`. (remember that they are character vectors)
abbs <- c("MA", "ME", "MI", "MO", "MU")
# Use the %in% command to check if the entries of abbs are abbreviations in the the murders data frame
abbs%in%murders$abb
# Use the `which` command and `!` operator to find out which index abbreviations are not actually part of the dataset and store in `ind`
ind <- which(!abbs %in% murders$abb)
# Names of abbreviations in `ind`
abbs[ind]

## 3.16 Plot
x <- murders$population / 10^6
y <- murders$total
plot(x, y)

with(murders, plot(population, total))

x <- with(murders, total / population * 100000)
hist(x)
murders$state[which.max(x)]

murders$rate <- with(murders, total / population * 100000)
boxplot(rate~region, data = murders)
boxplot(population~region, data = murders)

library(dslabs)
data(murders)
population_in_millions <- murders$population/10^6
total_gun_murders <- murders$total
plot(population_in_millions, total_gun_murders)

library(dslabs)
data(murders)
log_population_in_millions <- log10(murders$population/10^6)
log_total_gun_murders <- log10(murders$total)
plot(log_population_in_millions, log_total_gun_murders)

mil_pop <- murders$population / 1000000
hist(mil_pop)

## Chapter 7
# Loading data
library(dslabs)
data(murders)
# Loading dplyr
library(dplyr)
# Redefine murders so that it includes a column named rate with the per 100,000 murder rates
murders <- mutate(murders, rate = total / population * 100000)
str(murders)

rate <-  murders$total/ murders$population * 100000
# Redefine murders to include a column named rank
# with the ranks of rate from highest to lowest
murders <- mutate(murders, rank = rank(-rate))

# Load dplyr
library(dplyr)
# Use select to only show state names and abbreviations from murders
select(murders, state, abb)

# Add the necessary columns
murders <- mutate(murders, rate = total/population * 100000, rank = rank(-rate))
# Filter to show the top 5 states with the highest murder rates
filter(murders, rank<=5)

# Use filter to create a new data frame no_south
no_south <- filter(murders, region != "South")
# Use nrow() to calculate the number of rows
nrow(no_south)

# Create a new data frame called murders_nw with only the states from the northeast and the west
murders_nw <- filter(murders, region %in% c("Northeast", "West"))
# Number of states (rows) in this category 
nrow(murders_nw)

filter(murders, population < 5000000 & region == "Northeast")

# add the rate column
murders <- mutate(murders, rate =  total / population * 100000, rank = rank(-rate))

# Create a table, call it my_states, that satisfies both the conditions 
my_states <- filter(murders, rate < 1 & region %in% c("Northeast", "West"))
# Use select to show only the state name, the murder rate and the rank
select(my_states, state, rate, rank)

mutate(murders, rate =  total / population * 100000, rank = (-rate)) %>% select(state, rate, rank)
filter(murders, rate < 1 & region %in% c("Northeast", "West")) %>% select(state, rate, rank)

# Loading the libraries
library(dplyr)
data(murders)

# Create new data frame called my_states (with specifications in the instructions)
my_states <- mutate(murders, rate =  total / population * 100000, rank = rank(-rate))%>% filter(rate < 1 & region %in% c("Northeast", "West")) %>% select(state, rate, rank)
my_states <- murders %>% mutate(rate =  total / population * 100000, rank = rank(-rate))%>% filter(rate < 1 & region %in% c("Northeast", "West")) %>% select(state, rate, rank)


## Section 4
a <- 17

if(a!=0){
  print(1/a)
} else{
  print("No reciprocal for 0.")
}
rm(a)


## Instructions say: which states, if any, have a murder rate lower than 0.5 per 100,000
## but in fact it returns only the index of the minimum 
library(dslabs)
data(murders)
murder_rate <- murders$total / murders$population*100000
ind <- which.min(murder_rate)
if(murder_rate[ind] < .25){
  print(murders$state[ind]) 
} else{
  print("No state has murder rate that low")
}

a <- 17
ifelse(a > 0, 1/a, NA)

a <- c(0,1,2,-4,5)
result <- ifelse(a > 0, 1/a, NA)

data(na_example)
no_nas <- ifelse(is.na(na_example), 0, na_example) 
sum(is.na(no_nas))
sum(na_example)

z <- c(TRUE, TRUE, FALSE)
any(z)
all(z)

any(is.na(na_example))
all(is.na(na_example))

avg <- function(x){
  s <- sum(x)
  n <- length(x)
  s/n
}

x <- 1:100
identical(mean(x), avg(x))

## function to produce arithmetic or geometric average depending on a user defined variable
avg <- function(x, arithmetic){
  n <- length(x)
  ifelse(arithmetic, sum(x)/n, prod(x)^(1/n))
}

x <- 1:100
n <- length(x)
sum(x)/n 
prod(x)^(1/n)

# arithmetic <- TRUE
avg(x, TRUE)
# arithmetic <- FALSE
avg(x, FALSE)

for(i in 1:5){
  print(i)
}


compute_s_n <- function(n){
  x <- 1:n
  sum(x)
}

m <- 25
s_n <- vector(length = m) # create an empty vector
for(n in 1:m){
  s_n[n] <- compute_s_n(n)
}

n <- 1:m
plot(n, s_n)
## print first six lines
head(data.frame(s_n = s_n, formula = n*(n+1)/2))

plot(n, s_n)
lines(n, n*(n+1)/2)

## perform element-wise operations on any function
x <- 1:10
sapply(x, sqrt)

n <- 1:25
s_n <- sapply(n, compute_s_n)
plot(n, s_n)

x <- c(1,2,-3,4)
if(all(x>0)){
  print("All Postives")
} else{
  print("Not all positives")
}
if(any(x>0)){
  print("Some Postives")
} else{
  print("No positives")
}
if(any(!(x>0))){
  print("Some non Postives")
} else{
  print("No non positives")
}


## Write a line of code that assigns to the object new_names the 
## state abbreviation when the state name is longer than 8 characters.

new_names <- ifelse(nchar(murders$state)<=8, murders$state, murders$abb) 

## Create a function sum_n that for any given value, say n, 
## computes the sum of the integers from 1 to n (inclusive)
sum_n <- function(n){
  x <- 1:n
  sum(x)
}
sum_n(5000)

## Create a function altman_plot that takes two arguments, 
## x and y, and plots the difference against the sum.
altman_plot <- function(x, y){
  plot(x+y, y-x)
}
altman_plot(c(10, 9, 8, 7, 6), c(2, 4, 6, 8, 10))
altman_plot(name_length, murder_rate)

## note that x is still 3 after running function
x <- 3
my_func <- function(y){
  x <- 5
  y+5
}
x

compute_s_n <- function(n){
  x <- 1:n
  sum(x^2)
}
compute_s_n(10)

## Define an empty numerical vector s_n of size 25 using 
## s_n <- vector("numeric", 25) 
## and store in the results of S1,S2,.S25 using a for-loop.

m <- 25
s_n <- vector("numeric", 25)
for(n in 1:m){
  s_n[n] <- compute_s_n(n)
}
s_n[10]

## Repeat exercise but this time use sapply
x <- 1:25
s_n_2 <- sapply(x, compute_s_n)

## Repeat exercise but this time use map_dbl
s_n_3 <- map_dbl(x, compute_s_n)
## sorry - couldn't get that one to work 
## Error in map_dbl(x, compute_s_n) : could not find function "map_dbl"

## Plot S_n versus n
n <- 1:25
plot(n, s_n)

## Confirm that the formula for this sum is  
## Sn=  n(  n  +    1)(  2  n  +    1)/  6
form <- x*(x + 1) * ( 2*x + 1) / 6

identical(s_n[x], form[x])


library(dslabs)
data(movielens)
str(movielens)
nlevels(movielens$genres)

name <- c("Mandi", "Amy", "Nicole", "Olivia")
distance <- c(0.8, 3.1, 2.8, 4.0)
time <- c(10, 30, 40, 50)
hour <- time/60
speed <- distance/hour

# creating a data frame with stringAsFactors = FALSE
grades <- data.frame(names = c("John", "Juan", "Jean", "Yao"), 
                     exam_1 = c(95, 80, 90, 85), 
                     exam_2 = c(90, 85, 85, 90),
                     stringsAsFactors = FALSE)


## Section 3 Assessment
library(dslabs)
data(heights)
options(digits = 3)    # report 3 significant digits for all answers
str(heights)
mean(heights$height)
ind <- heights$height>mean(heights$height)
sum(ind)

female <- heights$sex == "Female"
ind2 <- heights$height>mean(heights$height) & female
sum(ind2)

mean(female)

ind <- match(50.0, heights$height)
max(heights$height)
i_max <- which.max(heights$height)
heights$sex[i_max]
num_of_int <- min(heights$height):max(heights$height)

sum(!num_of_int %in% heights$height)
heights$height[18]
heights2 <- heights$height*2.54
heights2[18]
mean(heights2)
mean(female)*1050


## female_only <- data.frame(sex = female, height = heights2)
## female_only <- filter(female_only, female_only$sex == TRUE)
## female_only <- filter(heights, heights$sex != "Male")

female_only <- heights[which(heights$sex == "Female"),names(heights) %in% c("sex","height")]
fem_heights2 <- female_only$height*2.54
mean(fem_heights2)

library(dslabs)
data(olive)
head(olive)
plot(olive$palmitic, olive$palmitoleic)
hist(olive$eicosenoic)
boxplot(palmitic~region, data = olive)

