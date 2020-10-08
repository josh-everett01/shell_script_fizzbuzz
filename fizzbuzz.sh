#! /bin/bash
fizzBuzz(){
for (( i=1; i<=100; i++))
do 
  if (( i % 3 == 0 && i % 5 == 0))
    then
      echo "FIZZBUZZ"
    elif (( i % 3 == 0 ))
    then 
      echo "Fizz"
    elif (( i % 5 == 0))
    then
      echo "Buzz"
  else
      echo "$i"
fi
done
}


read -p "Are you ready for FizzBuzz? (y/yes or n/no)" ANSWER
case "$ANSWER" in
  [yY] | [yY][eE][sS])
  echo "Here you go!"
  echo "$(fizzBuzz)"
  ;;
  [nN] | [nN][oO])
    echo "Sorry, you get FizzBuzz anyways :)"
    echo "$(fizzBuzz)"
    ;;
esac

