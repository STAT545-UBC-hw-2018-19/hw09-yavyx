suppressPackageStartupMessages(library(tidyverse))

words <-readLines("words.txt")
lowerWords <- str_to_lower(words) %>% #Turn all words to lower case
  .[!str_detect(., "'")] #Remove all words with apostrophes

firstLast <- str_c(str_sub(lowerWords, start = 1, end = 1),
                   "-",
                   str_sub(lowerWords, start = -1, end = -1)) #extract first and last character from each word

#firstLastFreq <-
table(firstLast) %>% 
  as_tibble() %>%
  arrange(desc(n)) %>%
  write_tsv("first_last.tsv")
