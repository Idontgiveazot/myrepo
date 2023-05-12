#data transformation
library(nycflights13)
library(tidyverse)

#get values by a condition:filter
#reorder rows: arrange
#pick variables by name:select
#create new variables of existing variabels:mutate
#collapse values to a single summary:summarise

#(x <- operation) will output object 

#piping
flights %>% filter(month==1|month==2)
#using in as a filter
flights %>% filter(month %in% c(1,2))

#negation 
flights %>% filter(!month == 2)

#instead of using equal sign for arithemtic operations, use near 
#will handle floating points

#filter can be used in combination of functions 
flights %>% filter(is.na(dep_time) | median(sched_dep_time) > sched_dep_time)

####when using arrange NA values are always at the end
flights %>% arrange(desc(dep_delay))
g <- names(flights)

#select 
flights %>% select(year, month,day)
flights %>% select(year:day)

#select but remove
flights %>% select(-month, -day)
flights %>% select(-(year:day))

#helper functions with select
starts_with()
ends_with()
contains()
matches()
num_range()
flights$origin
flights %>% select(contains('d'))
?select
#rename used to rename 
flights %>% rename(fart=tailnum)

#use everything function to grab all columns
flights %>% select(arr_time,everything())

#mutate creates new columns and transmute will only keep the new variables
#created using arithmic operation and column you include

flights %>% transmute(year)


find.package(dplyr)
usethis::create_github_token()
gitcreds::gitcreds_set()
