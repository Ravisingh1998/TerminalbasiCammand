cbTeam=("Virat" "Maxwell" "Siraj" "Chahal")



echo "The Array Is ${rcbTeam[*]}"





rcbTeam[4]="Abd"

rcbTeam[5]="Dinesh"



echo "After Create , The Array Is ${rcbTeam[*]}"



echo "All Array Is ${rcbTeam[*]}"

echo "Find Specific One , The Array Is ${rcbTeam[4]}"



rcbTeam[0]="ViratKohli"

rcbTeam[1]="DuPlessis"



echo "After Update , The Array Is ${rcbTeam[*]}"



unset 'rcbTeam[4]'

unset 'rcbTeam[1]'





echo "After Delete , The Array Is ${rcbTeam[*]}"

echo "Index Number of an array ,  ${!rcbTeam[*]}"

echo "Length/HeadCount of an array , ${#rcbTeam[*]}"
