
#!/bin/bash -x


heads=0
tails=0
count=0
while [ $count -lt 100 ]
do
    coin=$((RANDOM%2))
    if [ $coin -eq 1 ]
    then
        heads=$(($heads+1))
    else

        tails=$(($tails+1))
    
    fi
((count++))
done


echo "outcome of heads: " $heads
echo "outcome of tails: " $tails

 

