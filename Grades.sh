#Theodore Margoles
#!/bin/bash
#!/bin/sh
if [ "$#" -ne 1 ]; then
  echo "Usage: $0 filename" >&2
  exit 1
fi

cat $1 | sort -k3,3 -k2,2 -bi > sortedGrades.txt
cat sortedGrades.txt | while read line
do
	input=($line)
	let s=(${input[3]} + ${input[4]} + ${input[5]})/3
	echo "$s [${input[0]}] ${input[2]}, ${input[1]}"
done 
rm sortedGrades.txt

