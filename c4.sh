#!/bin/bash
RED='\033[0;31m'
NC='\033[0m'
echo -e "${RED}q1...${NC}"
echo "$(who)"


echo -e "${RED}q2...${NC}"
echo "$(less /etc/group | grep 'daemon')"

echo -e "${RED}q3...${NC}"
echo "$(less /etc/group | ggrep -P '^((?!daemon).)*$')"
# (?!daemon) -> negative lookahead (doesn't consumer char!)
# (?!daemon). --> consume a char that does not start w daemon
# ^(?!daemon).)*? --> Any no. of such char, from start to end

echo -e "${RED}q4...${NC}"
echo "$(less /etc/hosts | grep -n 'local')"
echo "$(less /etc/hosts | grep -c 'local')"

echo -e "${RED}q5...${NC}"
echo "$(ls /usr/share/doc/)"

echo -e "${RED}q6...${NC}"
echo "$(ls -R /usr/share/doc/| grep 'README$')"

echo -e "${RED}q7...${NC}"
echo "$(find ~ -type f -ctime -10h)"

echo -e "${RED}q12...${NC}"
echo "ls /etc | grep '\d'"
