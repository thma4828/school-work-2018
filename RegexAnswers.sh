#Theodore Margoles
#HW 1
#!/bin/sh

if [ "$#" -ne 1 ]; then
  echo "Usage: $0 filename" >&2
  exit 1
fi

grep -Ec "[0-9]$" $1
grep -Ec "^[^AEIOUaeiou]" $1
grep -Ec "[A-Za-z]{12}" $1
grep -Ec "...-...-....$" $1
grep -Ec "303-...-....$" $1
grep -Ec "^[AEIOUaeiuo].*[0-9]$"  $1
grep -Ec ".*@geocities.com$" $1
grep -Ec "^[A-La-l].*\..*@.*\..*$" $1


