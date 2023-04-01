
# install.packages(c("httr", "jsonlite"))
library(httr)
library(jsonlite)

# this function must be run!
covid <- function(code,begin,end){
  begin <- as.Date(begin)
  end   <- as.Date(end)
  code  <- as.character(code)
  name  <- "world.csv"
  if(code == "3001" | code == "3002" | code == "3003") {
      download.file("https://covid-19.nchc.org.tw/api/download/world.csv.gz",name)
      data           <- read.csv(name)
      data$ID        <- NULL
      unlink(name)
      for(k in 1:32){
        if(k < 10){names(data)[k] <- paste0("a0", k)}
        else      {names(data)[k] <- paste0("a" , k)}
      }
      if(code == "3001"){data <- data[data$a02 != data$a03,]}
      if(code == "3002"){data <- data[data$a02 == data$a03 & data$a02 != "全球",]}
      if(code == "3003"){data <- data[data$a02 == data$a03 & data$a02 == "全球",]}
    }
  if(code != "3001" & code != "3002" & code != "3003"){
    if(code == "4001"){
      add <- "&limited=TWN"
    }
    if(code != "4001"){
      add <- ""
    }
      url         <- paste0("https://covid-19.nchc.org.tw/api/covid19",
                            "?CK=covid-19@nchc.org.tw&querydata=",code,add)
      res         <- GET(url)
      x           <- rawToChar(res$content)
      Encoding(x) <- "UTF-8"
      data        <- fromJSON(x)
      data$id     <- NULL
    }
    if(code == "2002"){data <- data[data$a03 >= begin & data$a03 <= end,]}
    if(code == "2004"){data <- data[data$a02 >= begin & data$a02 <= end,]}
    if(code == "3001" | code == "3002" |code == "3003" | code == "4001")
                      {data <- data[data$a04 >= begin & data$a04 <= end,]}
    if(code != "2002" & code != "2004" & code != "3001" &
       code != "3002" & code != "3003" & code != "4001")
                      {data <- data[data$a01 >= begin & data$a01 <= end,]}
  data
}

# example
data <- covid(code  = "4001",         #  data code from code book
              begin = "2020-01-01", 
              end   = "2022-10-31") 
data <- NULL
View(data)


temp1 <- covid(code  = "3001",         #  data code from code book
              begin = "2020-03-01", 
              end   = "2020-03-01") 

temp2 <- covid(code  = "3001",         #  data code from code book
               begin = "2020-03-31", 
               end   = "2020-03-31") 

temp3 <- covid(code  = "3001",         #  data code from code book
               begin = "2020-04-30", 
               end   = "2020-04-30") 

temp <- rbind(temp1,temp2,temp3)
use <- temp[temp$a03    == "美國"     | temp$a03 == "日本"|
               temp$a03 == "中國大陸" | temp$a03 == "韓國"|
               temp$a03 == "新加坡"   | temp$a03 == "台灣",]
use <- subset(use, select = c('a11','a12','a03','a04','a05','a08'))
View(use)

