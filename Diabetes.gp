set terminal jpeg size 800,600
set output "heart_disease.jpeg"
set title "Heart Disease Deaths Over Time"
set xlabel "Year"
set ylabel "Number of Deaths"
set datafile separator ","
plot "data/us_causes_of_deaths.csv" using 2:12 with lines title "Heart Disease"
unset output
