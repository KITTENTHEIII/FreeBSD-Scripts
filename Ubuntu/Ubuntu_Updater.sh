#!/bin/bash

# Ensure the script is run as root
if [ "$(id -u)" -ne 0 ]; then
  echo "This script must be run as root. Use sudo or run as root user."
  exit 1
fi

echo "Starting Ubuntu system update and upgrade..."

# Update the package list
apt update

# Upgrade all upgradable packages
apt upgrade -y

# Full upgrade to handle dependencies
apt full-upgrade -y

# Autoremove unused packages
apt autoremove -y

# Clean up local repository of retrieved package files
apt clean

echo "System update and upgrade complete."
