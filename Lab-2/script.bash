#!/bin/bash
a=$1
array_num=$(echo $a | tr "." "\n")
perevod_num ()
{
	num=$1
	a=
	while [ $num -gt 0 ]
	do
		b=$(( $num % 2 ))
		a="$b$a"
		num=$(( $num / 2 ))
	done
	echo $a
}
str_num=
for i in ${array_num[@]}
do
	bin_num=$(printf "%08d" $(perevod_num $i))
	str_num="$str_num$bin_num."
done
echo "${str_num%.}"
