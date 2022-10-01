#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

#random number for guess
RANDOM_NUMBER=$((1 + $RANDOM % 1000))
# Enter a username and read username 
echo "Enter your username:"
read USERNAME
# number of try count innitialising
NUMBER_OF_TRY=0

function GUESSING_PROCESS(){
  read GUESSED_NUMBER
  NUMBER_OF_TRY=$((NUMBER_OF_TRY+1))
  #verify if the number is a int
  if ! [[ "$GUESSED_NUMBER" =~ ^[0-9]+$ ]]
  then
    
    echo That is not an integer, guess again:
    GUESSING_PROCESS
  else
   
    
  
    if [[ $GUESSED_NUMBER > $RANDOM_NUMBER ]]
    then
      echo "It's higher than that, guess again:"
      GUESSING_PROCESS
    elif [[ $GUESSED_NUMBER < $RANDOM_NUMBER ]]
    then
      echo "It's lower than that, guess again:"
      GUESSING_PROCESS
    else
      echo "You guessed it in $NUMBER_OF_TRY tries. The secret number was $RANDOM_NUMBER. Nice job!"
      
      #increment number of playing
      GAMES_PLAYED=$($PSQL "SELECT games_played FROM userbase WHERE username = '$USERNAME' ")
      if [[ -z $GAMES_PLAYED ]]
      then
        UPDATE_GAMES_PLAYED=$($PSQL "UPDATE userbase SET games_played = 1 WHERE username = '$USERNAME'")
      else
        UPDATE_GAMES_PLAYED=$($PSQL "UPDATE userbase SET games_played = $GAMES_PLAYED+1 WHERE username = '$USERNAME'")
      fi

      #check the best try
      BEST_GAME=$($PSQL "SELECT best_game FROM userbase WHERE username = '$USERNAME' ")
      if [[ -z $BEST_GAME ]]
      then
        UPDATE_BEST_GAMES=$($PSQL "UPDATE userbase SET best_game = $NUMBER_OF_TRY WHERE username = '$USERNAME'")
      elif [[ $NUMBER_OF_TRY < $BEST_GAME ]]
      then
        UPDATE_BEST_GAMES=$($PSQL "UPDATE userbase SET best_game = $NUMBER_OF_TRY WHERE username = '$USERNAME'")
      fi
    fi

  fi
  
}

#Verify if the username exist
USER_INFO=$($PSQL "SELECT * FROM userbase WHERE username = '$USERNAME'")

# If the username don't exist
if [[ -z $USER_INFO ]]
then
  echo "Welcome, $USERNAME! It looks like this is your first time here."
  # insert the username in the database
  USERNAME_INSERT=$($PSQL "INSERT INTO userbase(username) VALUES ('$USERNAME')")
  # Launch the guessing function
  echo "Guess the secret number between 1 and 1000:"
  GUESSING_PROCESS
else
  echo "$USER_INFO" | while IFS='|' read USERNAME GAMES_PLAYED BEST_GAME
  do
    echo "Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
  done
  echo "Guess the secret number between 1 and 1000:"
  GUESSING_PROCESS
fi
