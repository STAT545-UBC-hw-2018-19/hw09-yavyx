---
title: "First and Last Letter Combinations"
author: "Javier Castillo-Arnemann"
output:
  html_document:
    keep_md: yes
---



Let's quickly see which start-end letter combinations are the most common:


```r
first_last %>%
  head(15) %>%
  knitr::kable(col.names = c("Start-End", "Number of words"),
               align = "c")
```



 Start-End    Number of words 
-----------  -----------------
    s-s            2449       
    c-s            2217       
    p-s            1749       
    b-s            1303       
    a-s            1290       
    d-s            1273       
    m-s            1244       
    r-s            1173       
    t-s            1159       
    s-d            1001       
    s-g             941       
    f-s             896       
    e-s             871       
    h-s             851       
    i-s             763       

We can see that most of the common combinations end with `s`!
