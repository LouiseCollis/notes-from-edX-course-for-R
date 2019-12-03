library(tidyverse)
data(mpg)
table(mpg$manufacturer)
prop.table(table(mpg$manufacturer))
ggplot(mpg,aes(manufacturer)) + geom_bar()
fivenum(mpg$displ)
summary(mpg$displ)
ggplot(mpg,aes(displ)) + 
  geom_histogram(col = "black") + 
  theme(text = element_text(size = 30))

ggplot(mpg,aes(displ)) + 
  geom_histogram(col = "yellow") + 
  theme(text = element_text(size = 30))

ggplot(mpg) +
  geom_point(mapping = aes(x  = displ, y = cty))

ggplot(mpg) + geom_point(mapping = aes(x = displ, y = cty, colour = drv))

ggplot(mpg) + 
  geom_point(mapping = aes(x  = displ, y = cty)) +
  geom_smooth(mapping = aes(x  = displ, y = cty)) 

ggplot(mpg, mapping = aes(x  = displ, y = cty)) + 
  geom_point() +
  geom_smooth() 

ggplot(mpg, mapping = aes(x = displ, y = cty, colour = drv)) + 
  geom_point() + 
  geom_smooth() 

ggplot(mpg, mapping = aes(x = displ, y = cty)) + 
  geom_point() + 
  geom_smooth() +
  facet_wrap( ~ drv) 

cor(mpg$displ,mpg$cty)








data(starwars)
table(starwars$eye_color)
prop.table(table(starwars$eye_color))
ggplot(starwars,aes(eye_color)) + geom_bar()


data(storms)
table(storms$wind)
summary(storms$wind)
ggplot(storms,aes(wind)) + 
  geom_histogram(col = "black") + 
  theme(text = element_text(size = 30))

ggplot(storms, mapping = aes(x = wind, y = pressure, colour = status)) + 
  geom_point() 

ggplot(storms, mapping = aes(x = wind, y = pressure)) + 
  geom_point() + 
  geom_smooth() +
  facet_wrap( ~ status) 

ggplot(storms, mapping = aes(x = pressure, y = wind)) + 
  geom_point() + 
  geom_smooth() +
  facet_wrap( ~ status) 



install.packages("tidytext")
install.packages("janeaustenr")
install.packages("stringr")
install.packages("gutenbergr")

library(tidyverse)
library(tidytext)
library(janeaustenr)
library(stringr)

original_books <- austen_books() %>%
  group_by(book) %>%
  mutate(linenumber = row_number(),
         chapter = cumsum(str_detect(text, regex("^chapter [\\divxlc]",
                                                 ignore_case = TRUE)))) %>%
  ungroup()

table(original_books$book)

tidy_books <- original_books %>%
  unnest_tokens(word, text)

table(tidy_books$book)
# gave up - i was trying to count unique words unique(tidy_books$word, )

sapply(tidy_books, function(x) length(unique(x)))

library(dplyr)
tidy_books %>%
  anti_join(stop_words) %>% 
  count(word, sort = TRUE)

tidy_books %>%
  anti_join(stop_words) %>%
  count(word, sort = TRUE) %>%
  filter(n > 700) %>%
  ggplot(aes(word, n)) +
  geom_col()


library(gutenbergr)
oliver_twist <- gutenberg_download(730)
alice_books <- gutenberg_download(c(11,12))

tidy_alice <- alice_books %>%
  unnest_tokens(word, text)

tidy_alice %>%
  anti_join(stop_words) %>% 
  count(word, sort = TRUE)

tidy_twist <- oliver_twist %>%
  unnest_tokens(word, text)

tidy_twist %>%
  anti_join(stop_words) %>% 
  count(word, sort = TRUE)


install.packages("nycflights13")
library(nycflights13)
flights

filter(flights, month == 1)
filter(flights, month == 1, day == 1)
filter(flights, month == 5, day == 18)
flights %>% filter(month == 5, day == 18)
flights %>% filter(carrier == "AA")
flights %>% filter(carrier == "AA",month == 1, day == 1) %>% select(flight,dep_time,arr_time)
flights %>% filter(carrier == "AA",month == 1, day == 1) %>% select(flight,dep_time,origin,arr_time,dest)
flights %>% filter(origin == "LGA", dest == "ORD") %>% select(flight,dep_time,origin,arr_time,dest)
flights %>% filter(origin == "LGA", dest == "ORD") %>% select(ends_with("time"))
flights %>% mutate(delay = dep_time - sched_dep_time)
flights <- flights %>% mutate(delay = dep_time - sched_dep_time)
flights %>% filter(origin == "LGA", dest == "ORD") %>% select(contains("delay"))
flights %>% filter(origin == "LGA", dest == "ORD") %>% select(contains("delay"),dep_time,sched_dep_time)








