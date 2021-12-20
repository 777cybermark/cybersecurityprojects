#!/bin/bash
 
# Example search (Script name, Time, Date): ./roulette_dealer_finder_by_time.sh '12:00:00 AM' 0310   

grep -i "$1" $2_Dealer_schedule | awk -F" " '{print $1, $2, $5, $6}' 
