#!/bin/bash

# Input parameters (comma separated)
INPUTS="OMEGA,BETA,THETA"

# Split into array
IFS=',' read -ra NAMES <<< "$INPUTS"

# Run one container for each name
for NAME in "${NAMES[@]}"; do
    echo "Running container for $NAME..."
    docker run -d --name hello_$NAME mlops-task python main.py $NAME
done
