# Syntax

`data <- covid(code,begin,end)`

* `code` data type 
* `begin` begin date (yyyy-mm-dd)
* `end` end date (yyyy-mm-dd)

# Codebook

## Vaccination

* `2001` Vaccination coverage rates of COVID-19 vaccines in each city and county
* `2003` Coverage rates of COVID-19 vaccines by vaccination rounds
* `2004` Number of COVID-19 vaccine doses administered by vaccine brand
* `2006` Vaccination rates for COVID-19 among individuals aged 12 and above in each city and county (including foreigners)

## Confirmed Cases

* `4001` Global COVID-19 pandemic report
* `4002` New COVID-19 deaths in Taiwan
* `4003` Statistics on COVID-19 cases and testing in Taiwan
* `4004` Confirmed cases with detailed information in 2022 in Taiwan

## Moving Average

* `4050` Seven-day moving average of new confirmed cases of COVID-19 worldwide

`{"a01":"iso_code","a02":"continent","a03":"location","a04":"date","a05":"total_cases","a06":"new_cases","a07":"new_cases_smoothed","a08":"total_cases_per_million","a09":"new_cases_per_million","a10":"new_cases_smoothed_per_million","a11":"population","a12":"news_release_cases"} `


* `4051` Seven-day moving average of new confirmed cases of COVID-19 in Taiwan

## Local Cases in Taiwan

* `5002` Timeline of COVID-19 in towns
* `5003` Timeline of COVID-19 in towns (with 0)
