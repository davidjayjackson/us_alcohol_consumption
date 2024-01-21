set terminal svg size 800,600
set output "multline.svg"
set datafile separator ","
set key outside
set title "Trends in Alcohol Consumption Types Over Time"
set xlabel "Year"
set ylabel "Consumption per captia(Liters)"
set grid
set xdata time
set timefmt "%Y"
set format x "%Y"
set xtics rotate by -45
plot "alcohol_consumption.csv" using 2:3 with lines title 'Beer', \
     "" using 2:4 with lines title 'Wine', \
     "" using 2:5 with lines title 'Spirits'
