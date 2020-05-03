#! /bin/bash 

read -p "Enter value of A" a;
read -p "Enter value of B" b;
read -p "Enter value of C" c;

uc2=$(($a+$b*$c));
uc3=$(($a*$b+$c));
uc4=$((($c+$a)/$b));
uc5=$((($a%$b)+$c));


declare -A  assoarray;

assoarray[uc2]=$uc2;
assoarray[uc3]=$uc3;
assoarray[uc4]=$uc4;
assoarray[uc5]=$uc5;
array=();

for ele in ${!assoarray[@]}
do
  array[i]=${assoarray[$ele]};
  i=$(($i+1));
done
