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
}

# example
data <- covid(code = "4051", begin = "2020-01-01", end = "2023-03-31") 

data$a04 <- as.Date(data$a04)
data$a06 <- as.numeric(data$a06)
data$a07 <-as.numeric(data$a07)

ggplot2::ggplot(data, ggplot2::aes(x=a04)) +
  geom_line(ggplot2::aes(y = a07), color = "black") + 
  geom_line(ggplot2::aes(y = a06), color="darkred") +
  ggplot2::xlab("Time") +
  ggplot2::ylab("Confirmed Cases") 
