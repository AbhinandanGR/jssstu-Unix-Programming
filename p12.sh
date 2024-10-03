#!/bin/bash

echo -e "1. Addition\n2. Subtraction\n3. Multiplication\n4. Division\n5. Modulo Division\n"

echo "Enter two numbers "
read a b

echo "Enter the choice "
read choice

case $choice in
        1) add=`expr $a + $b`
                echo "Sum is : $add" ;;

        2) sub=`expr $a - $b`
                echo "Subtraction is : $sub";;

        3) multi=`expr $a \* $b`
                echo "Multiplication is : $multi";;
        4) if [ "$b" -eq 0 ]
           then
                echo "Division by zero is not allowed"
           else
                div=$(echo "scale=2; $a / $b" | bc)
           echo "Division is: $div"
           fi ;;
        5) mod=`expr $a % $b`
                echo "Mod is : $mod";;
        *) echo "invalid choice ";;
esac




