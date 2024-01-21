set terminal jpeg size 800,600
set output "ts.jpeg"
set datafile separator ","
set key outside
set title "Alcohol Consumption in the United States Over Time"
set xlabel "Year"
set ylabel "Consumption per captia (Liters)"
set grid
set xdata time
set timefmt "%Y"
set format x "%Y"
set xtics rotate by -45
plot "alcohol_consumption.csv" using 2:3 with lines title 'Beer', \
     "" using 2:4 with lines title 'Wine', \
     "" using 2:5 with lines title 'Spirits', \
     "" using 2:6 with lines title 'Total'
