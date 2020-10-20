awk -F"," '{print $1}' ../archivo_nombres.csv > lista_nombres.txt
filename='lista_nombres.txt'
while read line; do
  mkdir $line
  mv $line."jpg" $line"/"
done < $filename
rm *.jpg
