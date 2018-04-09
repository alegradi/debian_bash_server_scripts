#!/bin/bash
# Simple script for automatic system update and post clean-up

# script - start

echo "###"
echo "# Starting auto-update script"
echo "###"
sudo apt-get update
sudo apt-get dist-upgrade -y

echo "###"
echo "# Cleaning up the cache"
echo "###"

sudo apt-get autoclean

echo "###"
echo "# Finishing auto-update script"
echo "###"

# script - end
