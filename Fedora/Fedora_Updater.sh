#!/bin/bash

# Ensure the script is run as root
if [ "$(id -u)" -ne 0 ]; then
  echo "This script must be run as root. Use sudo or run as root user."
  exit 1
fi

echo "Starting Fedora system update and upgrade..."

# Full upgrade to handle dependencies
dnf full-upgrade -y

# Autoremove unused packages
dnf autoremove -y

# Clean up local repository of retrieved package files
dnf clean

echo "System update and upgrade complete."