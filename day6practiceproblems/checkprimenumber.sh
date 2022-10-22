
read -p "Enter the number which you want to check for prime number "
n=$((number/2))
for(i=2; i<=n; i++)
do
   flage=1
   if [$(($number/2%$i)) -eq 0]
   then
   flag=0
   break
   fi
done
if[$flag -eq 1 ]
then
   echo "yes ,it is prime number"
else
    echo "no , it is not prime number"
fi
