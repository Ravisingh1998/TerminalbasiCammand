
 echo "Please select employee type"
 echo "hint - 1.Fulltimer 2.Parttimer"
 read userInput

perHourCost=100
logHoursPerDay=8


         if [ $userInput == "Fulltimer" ]
          then
               salary=$((perHourcost*logHoursPerDay))
          elif [ $userInput == "Parttimer" ]
          then
              salary=$((perHourCost*logHoursPerDay))
              salary=$((salary/2))
          else
              echo "Please Check Your Input , It is Invalid "

           fi
if [ $userInput == "Fulltimer" ]  || [ $userInput == "Parttimer" ]
then

echo "you Select as $userInput and Pay for $userInput is $salary"
fi
