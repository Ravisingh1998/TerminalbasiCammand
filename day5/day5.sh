
read -p "Enter Your Favourite Player In IPL India Team " player

  if [ $player == "Dhoni" ]
   then
          echo "He is captain of CSK"
   elif[ $player == "Virat" ]
   then
          echo "he is captain of RCB"
     elif[ $player == "Rohit" ]
      then
          echo "he is captain of MI"
   else
       echo "Something went wrong"

   fi
