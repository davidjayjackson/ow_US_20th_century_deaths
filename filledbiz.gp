set terminal jpeg size 800,600
set output "ts2.jpeg"
set datafile separator ","
set key outside
set title "Alcohol Consumption in the United States Over Time\n(Prohibition: 1920 - 1933)"
set xlabel "Year"
set ylabel "Consumption per capita (Liters)"
set grid
set xdata time
set timefmt "%Y"
set format x "%Y"
set xtics rotate by -45
plot "data/us_causes_of_deaths.csv" using 2:13 with filledcurves x1 linecolor rgb "#0000FF20" title 'Cancer', \
     "" using 2:12 with filledcurves x1 linecolor rgb "#FFA50040" title 'Heart', \
     "" using 2:14 with filledcurves x1 linecolor rgb "#00FF0020" title 'Road', \
     "" using 2:15 with filledcurves x1 linecolor rgb "#80808040" title 'Total'
