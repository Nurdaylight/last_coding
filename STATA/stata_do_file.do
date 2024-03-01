*reading our data LO5

import delimited using "DATA\worldbank-monthly-asia-2019_long.csv", clear

*LO6 missing data
drop if mi(value)
*LO7.1
*filtering only required column
keep series seriescode countrycode value

*checking value variable type
describe value

* Summarize the "value" variable 
summarize value
*LO7.3
*assume we need some variation of value where it is value squared
gen value2 = value*value
gen lvalue=log(value2)
*LO7.2
keep if countrycode == "CHN" | countrycode == "IDN"
*LO8 saving data
save "DATA\worldbank_filtered_data.dta", replace


*LO9 run ols in stata, though this regression is absurd, only code matters right?
reg value value2


*LO 10 make graph
hist lvalue

*LO11 write code to save histogram
graph export "DATA\histogram_logvalue.png", replace
