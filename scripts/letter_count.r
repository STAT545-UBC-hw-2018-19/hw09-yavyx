library(tidyverse)

#Count how many words there are for every letter
words <- readLines("words.txt")
letter_count <- tibble(letters = LETTERS, count = 0)
i <- 1
for (l in LETTERS) {
  letter_count$count[i] <- sum(startsWith(words, l)) #Get how many words start with each letter
  i <- i + 1
}

write_tsv(letter_count, "letter_count.tsv")

letter_count %>%
  ggplot(aes(letters, count)) +
  geom_bar(stat = "identity", fill = "steelblue") +
  ggtitle("Number of words per letter") +
  theme_bw() +
  theme(
    axis.title.x = element_blank(), #Remove x and y axes labels
    axis.title.y = element_blank())

ggsave("letter_count.png", width = 5, height = 5)
