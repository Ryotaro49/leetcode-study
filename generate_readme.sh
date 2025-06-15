#!/bin/bash

# Usage:
# ./generate_readme.sh <difficulty> <number> "<title>" "<url>" "<description>" "<complexity>"

# Example:
# ./generate_readme.sh easy 1 "Two Sum" "https://leetcode.com/problems/two-sum" "Given an array of integers..." "O(n)"

# ---------

# Check arguments
if [ "$#" -lt 6 ]; then
  echo "Usage: $0 <difficulty> <number> \"<title>\" \"<url>\" \"<description>\" \"<complexity>\""
  exit 1
fi

DIFFICULTY=$1
NUMBER=$2
TITLE=$3
URL=$4
DESCRIPTION=$5
COMPLEXITY=$6

# Format folder name: e.g. easy/1_two_sum
FOLDER="${DIFFICULTY}/${NUMBER}_$(echo "$TITLE" | tr ' ' '_' | tr '[:upper:]' '[:lower:]')"

# Create folder
mkdir -p "$FOLDER"

# Copy template and replace placeholders
sed \
  -e "s/{NUMBER}/$NUMBER/g" \
  -e "s/{TITLE}/$TITLE/g" \
  -e "s#{URL}#$URL#g" \
  -e "s#{DESCRIPTION}#$DESCRIPTION#g" \
  -e "s/{COMPLEXITY}/$COMPLEXITY/g" \
  README_TEMPLATE.md > "$FOLDER/README.md"

echo "✅ Created: $FOLDER/README.md"
