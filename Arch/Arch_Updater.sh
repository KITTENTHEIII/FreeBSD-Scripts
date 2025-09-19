#!/bin/bash

# Ensure the script is run as root
if [ "$(id -u)" -ne 0 ]; then
  echo "This script must be run as root. Use sudo or run as root user."
  exit 1
fi

echo "Starting Arch Linux system update and upgrade..."

# Sync package databases and update all packages
pacman -Syu --noconfirm

# Clean package cache except for the most recent versions
paccache -r

echo "System update and upgrade complete."
