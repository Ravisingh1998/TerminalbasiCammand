
read -p "Enter the value which you want to convert:" value;

inch=$(($value*12))
echo "$value feet into inches is $inch"

meter=`awk 'BEGIN{ printf("%0.2",'$value'*0.3048 )}'`
echo "$value feet into meter is $meter"

feet=`awk 'BEGIN{ printf("%0.2",'$value'*(1/2))}'`
echo "$value inch into feet is $feet"

feet=`awk 'BEGIN{ printf("%0.2",'$value'/0.3048)}'`
echo "$value meter into feet is $feet"
