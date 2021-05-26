#echo "Sorting Arithmetic Computation Problem"

declare -A dict
read -p "Enter 3 numbers as an input: " a b c
#echo $a $b $c

result1=$(($a + $b * $c))
echo "Result1: $result1"
dict["1"]=$result1

result2=$(($a * $b + $c))
echo "Result2: $result2"
dict["2"]=$result2

result3=$(($c + $a / $b))
echo "Result3: $result3"
dict["3"]=$result3

result4=$(($a % $b + $c))
echo "Result4: $result4"
dict["4"]=$result4

echo "Dictionary storage: ${dict[*]}"

declare -a array=()
for(( i=1;i<=${#dict[*]};i++ ))
do
	array+=(${dict[$i]})
done	
echo "Array storage: ${array[*]}"

IFS=$'\n'          
desc_array=( $(printf "%s\n" ${array[@]} | sort -nr ) )  
echo "Descending order: ${desc_array[*]}"