#Theodore Margoles
#HW 1
#!/bin/sh
if [ "$#" -ne 1 ]; then
  echo "Usage: $0 filename" >&2
  exit 1
fi

awk '{format1 = "["; format2 = "]"; format_comma=","; OFMT = "%.0f";
      sum=$4+$5+$6; sum = sum/3; 
      print sum, format1 $1 format2, $3 format_comma,$2}' $1 | sort -k 3 -i


