
flip=$(($(($RANDOM%10))%2))
echo "coin flip is  $flip"
if [ $flip -eq 1 ]
then
echo "Heads"
else
echo "Tails"
fi
