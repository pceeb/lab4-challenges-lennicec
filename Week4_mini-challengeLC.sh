#!/bin/bash

echo "Cats eat 5 billion birds a year" | sed 's/\(Cats eat\) \(5 billion\) \(birds a year\)/\2?\2!/'

echo "12345abcde678910fghij" | sed 's/\(12345\)\(abcde\)\(678910\)\(fghij\)/\2\4\1\3/'

echo "12345abcde678910fghij" | sed 's/\([0-9]*\)\([a-z]*\)\([0-9]*\)\([a-z]*\)/\2\4\1\3/' | sed 's/\(..\)/\1\t/g'

echo "12345abcde678910fghij" | sed -e 's/[0-9]*\(ab\)\(cd\)\(e\)[0-9]*\(f\)\(gh\)\(ij\)/\1\t\2\t\3\4\t\5\t\6/'
