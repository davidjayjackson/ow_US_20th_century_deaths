# Gnuplot script for plotting CSV data with filled areas

# Setting the datafile separator as comma for CSV
set datafile separator ','

# Setting the title of the plot
set title 'US Causes of Death: 1900-2000 (Diabetes)'

# Setting labels for axes
set xlabel 'Year'
set ylabel 'Deaths'

# Setting the output format (change as needed, e.g., png, pdf, etc.)
set terminal png
set output 'Diabetes.png'
set grid

# Positioning the legend at the top left
set key top left
# set key title "**Income Bracket**"
set key font ",8"
set key off

# Setting the style for filled plot
set style fill solid 1.0 noborder

# Plotting the data with filled curves
# plot 'data/us_deaths_20th_century.csv' using 2:10 with filledcurves
plot 'data/us_deaths_20th_century.csv' using 2:10 with line 
