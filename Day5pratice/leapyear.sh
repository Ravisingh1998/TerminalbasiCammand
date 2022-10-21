
read -p "Enter the year to be checked: " year;

a='expr $Year%4'
b='expr $Year%100'
c='expr $Year%400'

     if [ $a -eq 0 -a $b -ne 0]
     then
     echo "$Year is a leap Year"

       elif[$c -eq 0]
       then
     echo "$Year is a leap Year"

 else
    echo "$Year is not a leap Year"
   fi
