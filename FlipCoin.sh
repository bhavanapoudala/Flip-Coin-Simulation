
#!/bin/bash -x


heads=0
tails=0
count=0
while [ $count -lt 4 ]
do
    coin=$((RANDOM%2))
    if [ $coin -eq 1 ]
    then
        heads=$(($heads+1))
        if [ $heads -eq 2 ]
        then
            break
        fi
    else
        tails=$(($tails+1))
        if [ $tails -eq 2 ]
        then
            break
        fi
    fi
((count++))
done
echo "Head won for " $heads "times" 
echo "Tails won for " $tails "times"
diff=$(($heads-$tails))
if [ $heads -eq $tails ]
then
    echo  "both are equal"
elif [[ $diff -eq 2 || $diff -eq -2 ]]
then
    echo  "difference between heads and tail is 2"
else
	echo "Neither Equal nor difference is 2"
	echo "Try flipping coin"
fi

