#set terminal jpeg
#set output "heart_disease.jpeg"
set title "Heart Disease Deaths Over Time"
set xlabel "Year"
set ylabel "Number of Deaths"
set datafile separator ","
plot "us_causes_of_deaths.csv" using 2:12 with lines title "Heart Disease"
