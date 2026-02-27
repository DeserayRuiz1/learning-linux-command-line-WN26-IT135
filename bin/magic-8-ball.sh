#!/bin/bash
# A script that simulates a Magic 8-Ball using an array and randomness.

# Define the array of possible answers (choices are separated by spaces)
ANSWERS=(
    "It is certain."
    "Yes, definitely."
    "Reply hazy, try again."
    "Cannot predict now."
    "Don't count on it."
    "Outlook not so good."
    "Very doubtful."
    "Ask again later."
    "No Hablo Ingleses"
    "Error 404: Answer Not Found. Try Again."
    "Great Scott! We're back in the terminal, Marty!"
    "I'm sorry, Dave. I'm afraid I can't do that."
    "Surely you can't be serious. I am serious... and don't call me Shirley."
    "Help me, Obi-Wan Kenobi. You're my only hope."
    "You're gonna need a bigger boat... and a better command."
    "Keep the change, ya filthy animal."
    "What we've got here is failure to communicate."
    "Look at me. I am the captain now."
    "Elementary, my dear Watson."
    "It's a trap!"
)

echo "--- The Magic 8-Ball ---"
read -p "Ask the 8-Ball a question and press Enter: "
echo "Shaking the 8-Ball..."

NUM_ANSWERS=${#ANSWERS[@]}
RANDOM_INDEX=$(( RANDOM % NUM_ANSWERS ))

sleep 3s ##sleep for 3 seconds

echo "8-BALL SAYS: ${ANSWERS[RANDOM_INDEX]}"


