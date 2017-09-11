#!/bin/bash

# Start apache
which apachectl 2> /dev/null
if [ $? -ne 0 ]; then
    echo "apachectl not found..."
    exit 2
fi
echo "Starting apache..."
apachectl -DFOREGROUND -k start 2>&1
