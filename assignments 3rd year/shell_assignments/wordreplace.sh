echo -n "Enter the word to replace: "
read oword
echo -n "Enter the new word: "
read nword
cat $1|sed s,$oword,$nword,g > temp
cat temp > $1
