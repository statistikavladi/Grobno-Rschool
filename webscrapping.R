library(RCurl)
library(jsonlite)
library(rvest)
page <- read_html("https://en.wikipedia.org/wiki/List_of_largest_employers_in_the_United_States")
employers <- page %>%
  html_nodes("table") %>%
  .[1] %>%
  html_table()

employers <- employers[[1]]
#--------------------------------------------------------------------------
ref <-  page %>%
          html_nodes(".references li") %>%
                html_text()         