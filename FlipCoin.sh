
#!/bin/bash -x

outcome=$((RANDOM%2))

if [ $outcome -eq 1 ]
then
	echo HEADS
else
	echo TAILS
fi
 

