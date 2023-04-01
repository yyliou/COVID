# install.packages(c("httr", "jsonlite"))
library(httr)
library(jsonlite)

# function
covid <- function(code,begin,end){
  url <- paste0(
    "https://covid-19.nchc.org.tw/api/covid19?CK=covid-19@nchc.org.tw&querydata=",code)
  x <- rawToChar(GET(url)$content)
  Encoding(x) <- "UTF-8"
  data <- fromJSON(x)
  data$id <- NULL
  if(code == "2004"| code == "4004"){i <- 2}
  else if(code == "4001" | code == "4050" | code == "4051"){i <- 4}
  else{i <- 1}
  var <- paste0("a0",i)
  data <- data[data[, var] >= begin & data[, var] <= end,]
  data
}

# example
data <- covid(code = "2006", begin = "2022-07-22", end = "2022-09-24") 

