#!/bin/bash

# Function to get the number of files
function get_file_count {
  echo $(ls -1 | wc -l)
}

echo "Welcome to the Guessing Game!"
echo "Can you guess how many files are in the current directory?"

file_count=$(get_file_count)
guess=-1

while [[ $guess -ne $file_count ]]
do
  read -p "Enter your guess: " guess

  if [[ $guess -lt $file_count ]]; then
    echo "Too low! Try again."
  elif [[ $guess -gt $file_count ]]; then
    echo "Too high! Try again."
  elif [[ $guess -eq $file_count ]]; then
    echo "Congratulations! You guessed correctly!"
  else
    echo "Invalid input. Please enter a number."
  fi
done
