*some random task of plotting additional histogram of lvalue*lavalue for some reason
use "DATA\worldbank_filtered_data.dta", clear

gen lvalue2=lvalue*lvalue

*LO 10 make graph
hist lvalue2

*LO11 write code to save histogram
graph export "DATA\histogram_logvalue2.png", replace
