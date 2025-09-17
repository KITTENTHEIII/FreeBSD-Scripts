#!/bin/sh

# Ensure the script is run as root
if [ "$(id -u)" -ne 0 ]; then
  echo "This script must be run as root. Use sudo or run as root user."
  exit 1
fi


echo "Setting up KDE, You will need to already have your GPU driver installed."
sleep 5s

# install necessary apps
echo "Installing necessary applications."
pkg install kde sddm xorg

# Enable the D-Bus system bus

echo "Enabling D-Bus"
sysrc dbus_enable=YES

# Enable the SDDM display manager
echo "Enabling SDDM Display manager"
sysrc sddm_enable=YES

echo "Please reboot your system!"