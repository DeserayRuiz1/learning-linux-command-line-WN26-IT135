#!/bin/bash

# --- 1. SET THE CURRENT FOLDER AS THE BASE ---
CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
INSTALL_DIR="$CURRENT_DIR/bash-screensavers"
REPO_URL="https://github.com/attogram/bash-screensavers.git"

# --- 2. THE CLEAN EXIT TRAP ---
# This clears the screen and shows a message when you hit Ctrl+C
trap 'clear; echo "Welcome back to Earth."; exit' INT

# --- 3. THE AUTO-INSTALLER ---
if [ ! -d "$INSTALL_DIR" ]; then
    echo "Downloading stars..."
    git clone "$REPO_URL" "$INSTALL_DIR"
fi

# --- 4. DYNAMIC SEARCH ---
STAR_PATH=$(find "$INSTALL_DIR" -name "stars.sh" | head -n 1)

# --- 5. LAUNCH ---
if [ -n "$STAR_PATH" ]; then
    echo "Launching Starfield... Press [Ctrl+C] to exit."
    sleep 5
    bash "$STAR_PATH"
else
    echo "Error: Stars not found."
    exit 1
fi
