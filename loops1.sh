#!/bin/bash

# Function to reverse the case of a character
reverse_case() {
    local char="$1"
    if [[ "$char" =~ [[:upper:]] ]]; then
        echo "${char,,}"   # Convert uppercase to lowercase
    else
        echo "${char^^}"   # Convert lowercase to uppercase
    fi
}

# Function to reverse the input string
reverse_string() {
    local input="$1"
    local output=""
    for (( i=${#input}-1; i>=0; i-- )); do
        output+=$(reverse_case "${input:i:1}")
    done
    echo "$output"
}

# Main script
input="$1"
reverse_string "$input"
