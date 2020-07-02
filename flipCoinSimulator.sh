#!/bin/bash
i=1
heads=0
tails=0
limit=21
while [ $i -ne 0 ]
do
   if [ $heads -le $limit -a $tails -le $limit ]
   then
      flip=$(( RANDOM%2 ))
      if [ $flip -eq 1 ]
      then
         heads=$(($heads+1))
      else
         tails=$(($tails+1))
      fi

      if [ $heads -eq $limit ]
      then
         echo "Heads occurs 21 times: Conratulations Winner"
      elif [ $tails -eq $limit ]
      then
         echo "Tails occurs 21 times: Conratulations Winner"
      fi

   fi
#  (( i++ ))
done
