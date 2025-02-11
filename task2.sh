#!/bin/bash
# Find lines containing "banana"
echo "Lines containing 'banana':"
grep "banana" sample.txt

# Find lines not containing "banana"
echo "Lines not containing 'banana':"
grep -v "banana" sample.txt

# Find unique lines
echo "Unique lines:"
sort sample.txt | uniq

# Count occurrences of each word
echo "Word counts:"
sort sample.txt | uniq -c

# Count occurrences of "banana"
echo "Occurrences of 'banana':"
grep "banana" sample.txt | wc -l
