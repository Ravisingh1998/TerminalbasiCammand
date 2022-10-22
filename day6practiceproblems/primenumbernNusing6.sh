read -p "Enter the number up to which you want to prime number:" number;
for(( i=2; i<=number; i++))
do
flage=1
num=$(($1/2))
for((j=2;j<=$num; j++))
do
if [ $(($i%$j)) -eq 0]
then
flag=0
break
fi
done
if[$flag -eq 1]
then
echo $i
fi
done
