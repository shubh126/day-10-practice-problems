#!/bin/bash


read -p "ENter the first Number:" a
read -p "ENter the second Number:" b
read -p "ENter the third Number:" c

op1=$(($a+$b*$c))
op2=$(($a*$b+$c))
op3=$(($c+$a/$b))
op4=$(($a%$b+$c))

declare -A results

operation1[0]=$op1
results["op1"]=${operation1[@]}

operation2[0]=$op2
results["op2"]=${operation2[@]}

operation3[0]=$op3
results["op3"]=${operation3[@]}

operation4[0]=$op4
results["op4"]=${operation4[@]}

echo ${results[@]}

echo "Ascending order:" $(printf '%s\n' "${results[@]}" | sort -n)
echo "Descending order:" $(printf '%s\n' "${results[@]}" | sort -nr)

