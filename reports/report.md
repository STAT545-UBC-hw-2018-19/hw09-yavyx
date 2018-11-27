---
title: "English Word lengths"
author: "Jenny Bryan, modified by Javier Castillo-Arnemann"
date: "27 November, 2018"
output:
  html_document:
    keep_md: yes
---



On most *nix systems, the file `/usr/share/dict/words` contains a bunch of words. On my machine, it contains 102305 words.

I computed the length of each word, i.e. the number of characters, and tabulated how many words consist of 1 character, 2 characters, etc.

The most frequent word length is 8.

Here is a histogram of word lengths.

![*Fig. 1* A histogram of English word lengths](histogram.png)

###My additions (Javier)
Analyzing the `words.txt` file, we computed how many words start with every letter, and obtained the following table: 


```r
letter_counts <- readr::read_tsv("letter_count.tsv")
```

```
## Parsed with column specification:
## cols(
##   letters = col_character(),
##   count = col_integer()
## )
```

```r
knitr::kable(letter_counts)
```



letters    count
--------  ------
A           1404
B           1456
C           1582
D            822
E            637
F            527
G            834
H            908
I            350
J            558
K            657
L            928
M           1744
N            569
O            393
P           1024
Q             68
R            770
S           1618
T            894
U            136
V            346
W            528
X             42
Y            154
Z            161

We also visualized the data so we can get a better idea of how the words are distributed.

![*Fig. 2* A bar plot of English words per letter](letter_count.png)
