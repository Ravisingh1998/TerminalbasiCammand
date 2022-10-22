echo "Enter the n number: "
read num
if (($num >= num && $num <= n ));
        then
                for ((i = num; i <= $num; i++));do
                        if (($num % $i == 0));
                                then
                                        prime=$i
                                        break
                        fi
                done
                if (($prime == $num));
                        then
                                echo "This number is prime."
                else
                        echo "The smallest prime fatcor is: "
                        echo $prime
                fi
fi
