#!/bin/bash
RED='\033[0;31m'
NC='\033[0m'
echo -e "${RED}q2...${NC}"
ls /usr/bin | grep '^.[a]' > c5q2.txt
echo "$(cat c5q2.txt | head)"

echo -e "${RED}q3...${NC}"
echo "$(sed '1,3d' c5q2.txt | head)"

echo -e "${RED}q4...${NC}"
echo "$(sed -n '/an/p' c5q2.txt | head)"

echo -e "${RED}q5...${NC}"
echo "$(cat c5q2.txt | sed -n '1,3d; /an/p;' | gsed 's/.*man/*** This might have something to do with man and man pages ***\n&/g')"

echo -e "${RED}q7...${NC}"
echo "$(cat eg.txt | gsed 's/^\s*//')"
