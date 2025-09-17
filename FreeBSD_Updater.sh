#!/bin/sh

# Ensure the script is run as root
if [ "$(id -u)" -ne 0 ]; then
  echo "This script must be run as root. Use sudo or run as root user."
  exit 1
fi

echo "Starting FreeBSD system update and upgrade..."

# Update FreeBSD base system
freebsd-update fetch install

# Update pkg repository and upgrade installed packages
pkg update
pkg upgrade -y

echo "System update and upgrade complete."