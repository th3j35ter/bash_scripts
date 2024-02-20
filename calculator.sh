#!/bin/bash

# Function for addition operation
addition() {
    echo $(($1 + $2))
}

# Function for subtraction operation
subtraction() {
    echo $(($1 - $2))
}

# Function for multiplication operation
multiplication() {
    echo $(($1 * $2))
}

# Function for division operation
division() {
    if [ $2 -eq 0 ]; then
        echo "Error: Division by zero!"
    else
        echo "Result: $(bc -l <<< "scale=2; $1 / $2")"
    fi
}

# Function for exponentiation operation
exponentiation() {
    echo "Result: $(bc <<< "scale=2; $1 ^ $2")"
}

# Function for square root operation
square_root() {
    echo "Result: $(bc <<< "scale=2; sqrt($1)")"
}

# Function for displaying menu
display_menu() {
    echo "Select an operation:"
    echo "1. Addition"
    echo "2. Subtraction"
    echo "3. Multiplication"
    echo "4. Division"
    echo "5. Exponentiation"
    echo "6. Square Root"
    echo "7. Exit"
    echo -n "Enter your choice: "
}

# Main script
while true; do
    display_menu
    read choice

    case $choice in
        1)
            echo -n "Enter first number: "
            read num1
            echo -n "Enter second number: "
            read num2
            echo "Result: $(addition $num1 $num2)"
            ;;
        2)
            echo -n "Enter first number: "
            read num1
            echo -n "Enter second number: "
            read num2
            echo "Result: $(subtraction $num1 $num2)"
            ;;
        3)
            echo -n "Enter first number: "
            read num1
            echo -n "Enter second number: "
            read num2
            echo "Result: $(multiplication $num1 $num2)"
            ;;
        4)
            echo -n "Enter first number: "
            read num1
            echo -n "Enter second number: "
            read num2
            echo "$(division $num1 $num2)"
            ;;
        5)
            echo -n "Enter base number: "
            read base
            echo -n "Enter exponent: "
            read exponent
            echo "$(exponentiation $base $exponent)"
            ;;
        6)
            echo -n "Enter a number: "
            read num
            echo "$(square_root $num)"
            ;;
        7)
            echo "Exiting..."
            exit 0
            ;;
        *)
            echo "Invalid choice. Please select again."
            ;;
    esac
done
