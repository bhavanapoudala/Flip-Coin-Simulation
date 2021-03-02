
#!/bin/bash -x


heads=0
tails=0
count=0
while [ $count -lt 42 ]
do
    coin=$((RANDOM%2))
    if [ $coin -eq 1 ]
    then
        heads=$(($heads+1))
        if [ $heads -eq 21 ]
        then
            echo "heads won 21 times "
            break
        fi
    else
        tails=$(($tails+1))
        if [ $tails -eq 21 ]
        then
            echo "tails won 21 times " 
            break
        fi
    fi
((count++))
done
echo "Head won for " $heads "times" 
echo "Tails won for " $tails "times"
if [ $heads -gt $tails ]
then
    won=$(($heads-$tails))
    echo  "heads won by " $won
else
    won=$(($tails-$heads))
    echo  "tails won by " $won
fi 

