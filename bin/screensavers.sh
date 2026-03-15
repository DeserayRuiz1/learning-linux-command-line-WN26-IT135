#!/bin/bash
# --- CONFIGURATION ---
BASE_DIR="/workspaces/learning-linux-command-line-WN26-IT135/bin/bash-screensavers"
REPO_URL="https://github.com/attogram/bash-screensavers.git"

# --- AUTO-INSTALLER ---
if [ ! -f "$BASE_DIR/screensaver.sh" ]; then
    clear
    echo "======================================"
    echo "    LINUX LAB AMBIANCE SELECTOR"
    echo "======================================"
    echo " Screensavers not found. Downloading..."
    echo " This will only happen once!"
    echo "======================================"
    cd "$(dirname "$BASE_DIR")" && git clone "$REPO_URL" "$(basename "$BASE_DIR")"
    if [ ! -f "$BASE_DIR/screensaver.sh" ]; then
        echo "Error: Download failed. Check your internet connection."
        exit 1
    fi
    echo " Download complete! Starting in 5 seconds..."
    sleep 5
fi

# --- ENSURE CORRECT DIRECTORY ---
cd "$BASE_DIR"

# --- THE MENU ---
clear
echo "======================================"
echo "    LINUX LAB AMBIANCE SELECTOR"
echo "======================================"
echo " 1) The Matrix"
echo " 2) Heavy Rain"
echo " 3) Growing Pipes"
echo " 4) Starfield"
echo " 5) Classic Menu (Full List)"
echo " q) Exit"
echo "--------------------------------------"
echo " TIP: Press [Ctrl+C] to exit any screensaver"
echo "======================================"
read -p " Select your vibe [1-5]: " choice

# --- LAUNCH LOGIC ---
case $choice in
    1) clear; echo "Launching Matrix... Press [Ctrl+C] to exit."; sleep 2; bash "$BASE_DIR/gallery/matrix/matrix.sh" ;;
    2) clear; echo "Launching Heavy Rain... Press [Ctrl+C] to exit."; sleep 2; bash "$BASE_DIR/gallery/rain/rain.sh" ;;
    3) clear; echo "Launching Growing Pipes... Press [Ctrl+C] to exit."; sleep 2; bash "$BASE_DIR/gallery/pipes/pipes.sh" ;;
    4) clear; echo "Launching Starfield... Press [Ctrl+C] to exit."; sleep 2; bash "$BASE_DIR/gallery/stars/stars.sh" ;;
    5) bash "$BASE_DIR/screensaver.sh" ;;
    q|Q) clear; echo "Goodbye!"; exit 0 ;;
    *) echo "Invalid choice!"; sleep 1; bash "$0" ;;
esac
