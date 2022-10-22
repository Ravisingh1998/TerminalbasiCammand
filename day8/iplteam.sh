echo "Please select any Team In IPL 2022"
echo "hint :: RCB MI"
read teamName
# Dictionary
declare -A cskTeam
cskteam[allRounder]="Jadeja"
cskTeam[captain]="Dhoni"
cskTeam[batsman]="MoenAli"
cskTeam[bowler]="saha"
# Array
rcbTeam=("Duplessis" "Virat" "Maxwell" "Siraj")
miTeam=("Rohit" "Ishan" "Pollard" "Bumrah")

# Global Variables
matchesPlayed=14
won=0
lost=0
points=0
nrr=""

# Functions
function errorHandler() {
echo "*****************Error Block In Case statements***************"
echo "Please Check Your Input , It's Invalid :("
}
function securedPlaceByTeam() {
echo "*****************Point 1***************"
if [ $teamName == "CSK" ]
then
position=9
elif [ $teamName == "RCB" ]
then
position=4
elif [ $teamName == "MI" ]
then
position=10
fi
echo $position
}
place="$(securedPlaceByTeam)" #calling Return Function
function rolesAndResponsibilityByPlayer(){
echo "*****************Point 6***************"
echo "$2 Is a $3 of Team $1 In IPL 2022"
}
function playersByTeam() {
echo "*****************Point 5***************"
if [ $1 == "RCB" ]
then
for item in ${rcbTeam[*]}
do
if [ $item == "Maxwell" ]
then
rolesAndResponsibilityByPlayer $1 $item "All-Rounder"
elif [ $item == "Virat" ]
then
rolesAndResponsibilityByPlayer $1 $item "Batsman"
elif [ $item == "Siraj" ]
then
rolesAndResponsibilityByPlayer $1 $item "Bowler"
else
rolesAndResponsibilityByPlayer $1 $item "Captain"
fi
done
elif [ $1 == "MI" ]
then
for item in ${miTeam[*]}
do
if [ $item == "Pollard" ]
then
rolesAndResponsibilityByPlayer $1 $item "All-Rounder"
elif [ $item == "Ishan" ]
then
rolesAndResponsibilityByPlayer $1 $item "Batsman"
elif [ $item == "Bumrah" ]
then
rolesAndResponsibilityByPlayer $1 $item "Bowler"
else
rolesAndResponsibilityByPlayer $1 $item "Captain"
fi
done
elif [ $1 == "CSK" ]
then
for item in ${cskTeam[*]}
do
if [ $item == "Jadeja" ]
then
rolesAndResponsibilityByPlayer $1 $item "All-Rounder"
elif [ $item == "MoenAli" ]
then
rolesAndResponsibilityByPlayer $1 $item "Batsman"
elif [ $item == "Saha" ]
then
rolesAndResponsibilityByPlayer $1 $item "Bowler"
else
rolesAndResponsibilityByPlayer $1 $item "Captain"
fi
done
fi
}
function playoffsEligibility() {
echo "*****************Point 4***************"
if [ $2 -le 4 ]
then
echo "$1 is Eligible for play-offs"
else
echo "$1 is Not Eligible for play-offs"
fi
}
function pointsCalculator() {
echo "*****************Point 3***************"
lost=$((matchesPlayed-$1))
points=$(($1*2))
echo "You Selected $4"
echo "Place secured : $3"
echo "Matches Played In This Season $matchesPlayed"
echo "Win : $1 and Lose : $lost"
echo "Runrate : $2"
echo "Points : $points"
playoffsEligibility $4 $3
playersByTeam $4
}
echo "*****************Point 2***************"
case $place in
4)
won=8
nrr="-0.253"
pointsCalculator $won $nrr $place $teamName
;;
9)
won=4
nrr="-0.203"
pointsCalculator $won $nrr $place $teamName
;;
10)
won=4
nrr="-0.406"
pointsCalculator $won $nrr $place $teamName
;;
*)
errorHandler
;;
esac
