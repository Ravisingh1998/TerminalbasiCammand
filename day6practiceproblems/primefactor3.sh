read -p "enter the number of which we want factors: " number;

while[$(( $number % 2)) -eq 0]
do
echo 2
number=$(( $number / 2))
done

for (( num_in=3; num_in<=$(($number /2 )); num_in=$(($num_in +2)) ))
do
while [ $(( &number % $num_in )) == 0]
do
echo$num_in
number=$(($number / $num_in ))
done
done
echo $number


