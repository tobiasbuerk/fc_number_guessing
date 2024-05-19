#! /bin/bash
PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

RANDOMM=$(( ( RANDOM % 1000 )  + 1 ))
#echo $RANDOMM 
#TRIES=0
#echo  "Enter your username:"


function INITIALIZE_USER (){
  echo  "Enter your username:"
  read NAME

  DB_USER=$($PSQL"SELECT username FROM users WHERE username='$NAME';")
  BEST_GAME=$($PSQL"SELECT best_game FROM users WHERE username='$NAME';")
  PLAYED_GAME=$($PSQL"SELECT games_played FROM users WHERE username='$NAME';")

  #if username not found
  if [[ -z $DB_USER ]]
  then
    DB_USER=$NAME
    # create user with 0 games and highes try number to compare later
    DB_INPUT=$($PSQL"INSERT INTO users(username,games_played,best_game) VALUES ('$DB_USER',0,1000);")
    BEST_GAME=$($PSQL"SELECT best_game FROM users WHERE username='$DB_USER';")
    #newly search for created user in db
    DB_USER=$($PSQL"SELECT username FROM users WHERE username='$DB_USER';")
    
    echo  "Welcome, $DB_USER! It looks like this is your first time here."

  else
    echo  "Welcome back, $DB_USER! You have played $PLAYED_GAME games, and your best game took $BEST_GAME guesses."
              #Welcome back, <username>! You have played <games_played> games, and your best game took <best_game> guesses.
  fi

  echo  "Guess the secret number between 1 and 1000:"
  START_GAME
}



function START_GAME(){
  local TRIES=$1
  
  
  read NUMBER
  # if not an integer 
  if ! [[ $NUMBER =~ ^[0-9]+$ ]]
  then
    echo  "That is not an integer, guess again:"
    START_GAME $1
  else
    
    # if input higher
    if [[ $NUMBER -gt $RANDOMM ]]
    then 
      echo  "It's lower than that, guess again:"
       
      START_GAME $((TRIES + 1))
    elif [[ $NUMBER -lt $RANDOMM ]]
    then
      echo  "It's higher than that, guess again:"
       
      START_GAME $((TRIES + 1))
    elif [[ $NUMBER -eq $RANDOMM ]]
    then
      ((TRIES++)) 
      echo  "You guessed it in $TRIES tries. The secret number was $RANDOMM. Nice job!"
      #You guessed it in <number_of_guesses> tries. The secret number was <secret_number>. Nice job!

      # save if best game
      if [[ $TRIES -lt $BEST_GAME ]]
      then
        DB_UPDATE_BEST_GAME=$($PSQL"UPDATE users SET best_game = $TRIES WHERE username='$DB_USER';")
        #echo $DB_UPDATE_BEST_GAME
      fi

      # DB update games_played
      GAMES_PLAYED=$($PSQL"UPDATE users SET games_played=  games_played + 1 WHERE username='$DB_USER'")
    fi
  fi

}

INITIALIZE_USER