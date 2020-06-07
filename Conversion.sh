#! /bin/bash -x
echo "Converting Fahrenheit to Celsius and vice versa"
echo "1. Convert Celsius temperature into Fahrenheit"
echo "2. Convert Fahrenheit temperatures into Celsius"
echo -n "Select your choice (1-2) : "
read chosen
function tempConversion(){
choice=$1
if [ $choice -eq 1 ]
then
    echo -n "Enter temperature (C) : "
    read tempc

   if [ $tempc -ge 0 -a $tempc -lt 101 ];
   then
        tempf=$(echo "scale=2;((9/5) * $tempc) + 32" |bc)
        echo "$tempc C = $tempf F"
   else
        echo "The input should be between 0 and 100 "
   fi
elif [ $choice -eq 2 ]
then
    echo -n "Enter temperature (F) : "
    read tempf
    if [ $tempf -ge 32 -a $tempf -lt 213 ];
    then
        tempc=$(echo "scale=2;(5/9)*($tempf-32)"| bc)
        echo "$tempf = $tempc"
    else
        echo " The input should be betweeen 32F and 212F "
    fi
else
    echo "Please select 1 or 2 only"
exit 1
fi
}
tempConversion $chosen
