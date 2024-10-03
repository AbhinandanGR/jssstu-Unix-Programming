#!/bin/bash

echo "Enter the units consumed "
read unit

if [ $unit -le 200 ]
then
	amt=$( echo "$unit * 0.8" | bc )

elif [ $unit -gt 200 ] && [ $unit -le 300 ]
then
	basic_amt=$( echo "200 * 0.8" | bc )
	excess_unit=$( echo "$unit - 200" | bc )
	excess_amt=$( echo "$excess_unit* 0.9" | bc )
	amt=$( echo "$basic_amt + $excess_amt" | bc )
else
	basic_amt=$( echo "200 * 0.8" | bc )
	mid_amt=$( echo "100 * 0.9" | bc )
	excess_unit=$( echo "$unit - 300" | bc )
        excess_amt=$( echo "$excess_unit* 1" | bc )
	amt=$( echo "$basic_amt + $mid_amt + $excess_amt" | bc )
fi

amt=$( echo "$amt + 100" | bc )

if [ $( echo "$amt > 400" | bc) -eq 1 ]
then
	sur=$( echo "$amt * 0.15" | bc )
	total_amt=$( echo "$amt+$sur" | bc )
else
	total_amt=$amt
fi

echo "Total amount is : $total_amt"


	


