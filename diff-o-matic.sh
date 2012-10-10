let "i=0"
`curl $1  > out2`
while [ "$diff" = "" ]
do
  let "i = i + 1"
  echo "Diff-o-matic try #$i"
  `curl $1  > out1 2> /dev/null`
  diff=`diff out1 out2`
done
echo "Error, pages don't match"