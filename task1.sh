#!/bin/bash

sh infinite.sh &


PID=$(ps | grep 'infinite.sh' | grep -v grep | awk '{print $1}')
kill -9 $PID
echo "Killed infinite.sh with PID $PID"
