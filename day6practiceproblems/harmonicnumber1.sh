read -p "enter the number up to which you want an harmonic series: " number;


sum=0;

for((i=1; i<=$number; i++))
do
 sum= `awk 'BEGIN{printf("%0.2",'$sum'+'1/$i')}'`
done
echo "The sum of harmonic series upto $number is $sum";
