#!/bin/bash
echo "1 is not a prime number.";
for((k=2;k<=20;k++)) 
do
  c=0;
  for((i=2; i<=$k/2; i++))
  do
    r=$(( k%i ))
    if [ $r -eq 0 ]
    then
      let c=1;
      break;
    fi
  done
  if [ $c -eq 0 ];
  then
  echo "$k is a prime number.";
  else
  echo "$k is not a prime number.";
  fi
done