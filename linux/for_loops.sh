#!/bin/bash

# Variables
num=$(echo  {0..9})
provinces=('ON' 'BC' 'AB' 'QC' 'NB')
ls_out=$(ls)
execs=$(find /home -type f -perm 777 2> /dev/null)

# For Loops
# Create a loop that prints 3, 5, or 7
for num in ${nums[@]}
do
  if [ $num = 3 ] || [ $num = 5 ] || [ $num = 7 ]
  then
    echo $num
  fi
done


# Create a loop that looks for 'Ontario'
for province in ${provinces[@]}
do
if [ $province == 'ON' ]; 
   
   then
     echo "Ontario is the best!"
   else
     echo "I'm not a fan of Ontario..."  
   fi
done


# Create a `for` loop that prints out each item in your variable that holds the output of the `ls` command.
for x in ${ls_out[@]}
do
  echo $x
done

# Create a for loop to print out execs on one line for each entry
for exec in ${execs[@]}
do
  echo $exec
done

 
