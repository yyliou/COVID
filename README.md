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

`{"id":"ID","a01":"國家","a02":"統計日期","a03":"疫苗廠牌","a04":"第一劑累計接種人次","a05":"第二劑累計接種人次","a06":"追加劑累計接種人次","a07":"2nd追加劑累計接種人次","a08":"3nd追加劑累計接種人次","a09":"加強劑累計接種人次","a10":"總共累計接種人次","a11":"第一劑新增接種人次","a12":"第二劑新增接種人次","a13":"追加劑新增接種人次","a14":"2nd追加劑新增接種人次","a15":"3nd追加劑新增接種人次","a16":"加強劑新增接種人次","a17":"總共新增接種人次"}`

* `2005` COVID-19 vaccine coverage by country

`{"id":"ID","a01":"location","a02":"iso_code","a03":"date","a04":"total_vaccinations","a05":"people_vaccinated","a06":"people_fully_vaccinated","a07":"total_boosters","a08":"daily_vaccinations_raw","a09":"daily_vaccinations","a10":"total_vaccinations_per_hundred","a11":"people_vaccinated_per_hundred","a12":"people_fully_vaccinated_per_hundred","a13":"total_boosters_per_hundred","a14":"daily_vaccinations_per_million","a15":"daily_people_vaccinated","a16":"daily_people_vaccinated_per_hundred","a17":"manufacturer"}`

* `2006` Vaccination rates for COVID-19 among individuals aged 12 and above in each city and county (including foreigners)

`{"id":"ID","a01":"發佈統計日期","a02":"縣市","a03":"群組","a04":"第1劑","a05":"第2劑","a06":"加強劑","a07":"加強劑"} `

## Confirmed Cases

* `4001` Global COVID-19 pandemic report
* `4002` New COVID-19 deaths in Taiwan

`{"id":"ID","a01":"Announcement date","a02":"Case number","a03":"Gender","a04":"Age","a05":"Chronic diseases","a06":"vaccination","a07":"Contact history","a08":"Onset date","a09":"symptom","a10":"Inspection date","a11":"Hospitalization","a12":"Confirmed date","a13":"Death date"}`

* `4003` Statistics on COVID-19 cases and testing in Taiwan
* `4004` Confirmed cases with detailed information in 2022 in Taiwan

`{"id":"ID","a01":"案號","a02":"確診日","a03":"採檢日","a04":"國籍","a05":"地區","a06":"性別","a07":"年齡","a08":"是否為突破性感染","a09":"COVID-19疫苗接種","a10":"發病日","a11":"症狀","a12":"採檢途徑","a13":"備註"}`

## Moving Average

* `4050` Seven-day moving average of new confirmed cases of COVID-19 worldwide

`{"a01":"iso_code","a02":"continent","a03":"location","a04":"date","a05":"total_cases","a06":"new_cases","a07":"new_cases_smoothed","a08":"total_cases_per_million","a09":"new_cases_per_million","a10":"new_cases_smoothed_per_million","a11":"population","a12":"news_release_cases"}`


* `4051` Seven-day moving average of new confirmed cases of COVID-19 in Taiwan

`{"a01":"iso_code","a02":"continent","a03":"location","a04":"date","a05":"total_cases","a06":"new_cases","a07":"new_cases_smoothed","a08":"total_cases_per_million","a09":"new_cases_per_million","a10":"new_cases_smoothed_per_million","a11":"population","a12":"news_release_cases"} `

## Local Cases in Taiwan

* `5002` Timeline of COVID-19 in towns

`{"id":"ID","a01":"個案研判日","a02":"個案公佈日","a03":"縣市別","a04":"區域","a05":"新增確診人數","a06":"累計確診人數"}`

* `5003` Timeline of COVID-19 in towns (with 0)
