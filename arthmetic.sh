#Given two integers,  and , find their sum, difference, product, and quotient.
#Two lines containing one integer each ( and , respectively).
#X >= 100 ,Y<=100 and Y not 0

read X
read Y
if [ $X -gt -100 ] && [ $Y -lt 100 ] && [ $Y -ne 0 ]
then
sum=$(( $X + $Y ))
diff=$(( $X - $Y ))
prod=$(( $X * $Y ))
divi=$(( $X / $Y ))
echo $sum
echo $diff
echo $prod
echo $divi
else
echo "wrong input"
fi
