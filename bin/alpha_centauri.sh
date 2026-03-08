#!/bin/bash

# Attempt to source the library
source ./tools.sh 2>/dev/null

# Troubleshooting: Check if the 'handshake' variable exists
if [ "$TOOLS_LOADED" != "true" ]; then
    echo "CRITICAL ERROR: Navigation Library (tools.sh) not found!"
    echo "Ensure tools.sh is in the same directory as this script."
    exit 1
fi

#echo "Systems Check: Library v$TOOLS_VERSION Loaded."



#check to see if bc is installed
if ! command -v bc &> /dev/null; then
  echo "Error: bc is not installed. Run 'sudo apt install bc' first."
  exit 1
fi

# Define inputs from command line
AGE=$1
SPEED=$2

# Logic: Time = Distance (4.37 ly) / Speed
TRAVEL_TIME=$(echo "4.37 / $SPEED" | bc -l)

# Calculate raw age by adding travel time to current age
RAW_AGE=$(echo "scale=4; $AGE + $TRAVEL_TIME" | bc -l)

# Round output to 2 decimal places
FINAL_AGE=$(printf "%.2f" "$RAW_AGE")

echo "At $SPEED of the speed of light, you will be $FINAL_AGE years old upon arrival at Alpha Centauri." 

