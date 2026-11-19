#!/bin/bash

# 1. Declare an array of strings (space-separated, no commas)
fruits=("apple" "banana" "cherry" "dragon fruit")

# 2. Loop through the array and echo each item
for fruit in "${fruits[@]}"; do
    echo "Current item: $fruit"
done

