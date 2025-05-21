#!/bin/bash

PORT=8000

# Check if port is in use
PID=$(lsof -t -i:$PORT)
if [ -n "$PID" ]; then
  echo "Port $PORT is in use by PID $PID. Killing..."
  kill -9 $PID
else
  echo "Port $PORT is free."
fi

# Run Django server
echo "Starting Django server on port $PORT..."
python3 manage.py runserver $PORT

