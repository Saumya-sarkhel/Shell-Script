echo "--- Temperature Converter ---"
echo "Celsius to Fahrenheit"
echo -n "Enter the temperature in Celsius: "
read cel
fren=$(echo "scale=2; ($cel * 9 / 5) + 32" | bc)
echo "The Temperature in Fahrenheit is: $fren"
echo "Fahrenheit to Celsius"
echo -n "Enter Temperature in Fahrenheit: "
read fren
cel=$(echo "scale=2; ($fren - 32) * 5 / 9" | bc)
echo "The Temperature in Celsius is: $cel"
