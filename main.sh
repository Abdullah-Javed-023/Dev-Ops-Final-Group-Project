#!/bin/bash

# DeelTech Solutions - Main Program Interface

SCRIPT_DIR="$(dirname "$0")/scripts"
DEFAULT_CHOICE=1

echo "=============================================="
echo "     DEELTECH FACULTY ONBOARDING PROGRAM      "
echo "=============================================="
echo "1) Run Web Scraper & Name Parser (DEFAULT)"
echo "2) Exit"
echo

read -p "Enter choice [1-2] (press ENTER for default): " choice
choice=${choice:-$DEFAULT_CHOICE}

case $choice in
    1)
        echo "[INFO] Running scraper..."
        bash "$SCRIPT_DIR/scraper.sh"
        ;;
    2)
        echo "[INFO] Exiting program."
        ;;
    *)
        echo "[ERROR] Invalid choice."
        ;;
esac
