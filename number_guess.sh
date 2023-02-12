#!/bin/bash
PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

echo "Enter your username:"
read USERNAME

USERNAME_VA=$($PSQL "SELECT username FROM user_table WHERE username = '$USERNAME'")
GAMES_PLAYED=$($PSQL "SELECT count(*) FROM user_table INNER JOIN games USING(user_id) WHERE username = '$USERNAME'")
BEST_GAME=$($PSQL "SELECT min(guess) FROM user_table INNER JOIN games USING(user_id) WHERE username = '$USERNAME'")

if [[ -z $USERNAME_VA ]]
then
  INSERT_NEW=$($PSQL "INSERT INTO user_table(username) VALUES('$USERNAME')")
  BEST_GAME=0
  GAMES_PLAYED=0
  echo "Welcome, $USERNAME! It looks like this is your first time here."
else
  
  echo "Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
fi

NUMBER=$(( RANDOM %1000 +1 ))
echo "Guess the secret number between 1 and 1000:"
GUESS_COUNT=1

while read GUESS_NUMBER
do
  if [[ ! $GUESS_NUMBER =~ ^[0-9]+$ ]]
  then
    echo "That is not an integer, guess again:"
  else
    if [[ $GUESS_NUMBER -eq $NUMBER ]]
    then 
     break;
    else
      if [[ $GUESS_NUMBER -gt $NUMBER ]]
      then
        echo "It's lower than that, guess again:"
      else
        echo "It's higher than that, guess again:"
      fi 
    fi
  fi
  GUESS_COUNT=$(( $GUESS_COUNT + 1 ))
 
done 

if [[ $GUESS_COUNT == 1 ]] 
then
  echo "You guessed it in $GUESS_COUNT tries. The secret number was $NUMBER. Nice job!"
else
  echo "You guessed it in $GUESS_COUNT tries. The secret number was $NUMBER. Nice job!"
fi

USER_ID=$($PSQL "SELECT user_id FROM user_table WHERE username = '$USERNAME'")
INSERT_GAMES=$($PSQL "INSERT INTO games(guess, user_id) VALUES($GUESS_COUNT, $USER_ID)")

