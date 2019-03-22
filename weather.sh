#requires espeak , mpg123

date > date.txt
espeak "the date is:" -g 5 -s 120
cat date.txt |espeak -g 5 -s 120
wget -q http://penteli.meteo.gr/stations/innoetics/31.mp3 #replace 31 with id of city
espeak "weather forecast for janina begins" -g 5 -s 120
mpg123 -q 31.mp3 #replace 31 with id of city
rm 31.mp3 #replace 31 with id of city
rm date.txt
echo "bye!"

#version 2
#fixes outputting a ton of useless information