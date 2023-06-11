a=$( free -m | awk '/Mem:/ { print $NF }' )
t=$( free -m | awk '/Mem:/ { print $2 }' )
# Perform float calculation and assign the result to a variable
n=100
float_result=$(echo "scale=3; $a / $t " | bc)
per=$( echo "$float_result * 100" | bc )

# Display the float result
echo "Float result: $per"

