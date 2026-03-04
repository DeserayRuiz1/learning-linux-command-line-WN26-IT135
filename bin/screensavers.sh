#!/bin/bash

# --- CONFIGURATION ---
BASE_DIR="/workspaces/learning-linux-command-line-WN26-IT135/bin/bash-screensavers"

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

read -p " Select your vibe [1-5]: " choice

# --- LAUNCH LOGIC (Updated with your discovered paths) ---
case $choice in
    1) bash "$BASE_DIR/gallery/matrix/matrix.sh" ;;
    2) bash "$BASE_DIR/gallery/rain/rain.sh" ;;
    3) bash "$BASE_DIR/gallery/pipes/pipes.sh" ;;
    4) bash "$BASE_DIR/gallery/stars/stars.sh" ;;
    5) bash "$BASE_DIR/screensaver.sh" ;;
    q|Q) clear; exit 0 ;;
    *) echo "Invalid choice!"; sleep 1; bash "$0" ;;
esac
