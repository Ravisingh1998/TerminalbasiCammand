sum=0;
for ((i=0; i<5; i++))
do
num=$(( (RANDOM % 90 ) +10 ));
echo="Number enter is $num"
sum=$(($num+$num));
done
Avg=$((&sum/5))
echo "Sum of five Number is $sum"
echo "Average of five Number is $Avg"
