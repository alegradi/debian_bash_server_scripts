#!/bin/bash
# Script that checks the most important services on a server

# Global variables / defaults
CONTROL_FILE=/root/control_file/control_sys_report.txt


# Fucntion definitions - start

funcCheckService () {
    echo ""
    echo "================================"
    systemctl status $1 | head -n 7
    echo "================================"
    echo ""
}

# Function definitions - end


# Script - start

while read -r TARGET; do
  TARGET_SERVICE=$TARGET

  funcCheckService $TARGET_SERVICE

done <$CONTROL_FILE

exit

# Script - end


