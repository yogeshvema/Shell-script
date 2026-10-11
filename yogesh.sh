#!/bin/bash

set -x # enable debug mode

df -h # display disk space usage

ps -ef | grep "amazon" # display processes related to amazon

echo 1  # print 1
echo 2  # print 2


set -e #exit the script if any command fails
set -o pipefail # exit the script if any command in a pipeline fails

curl # fetch data from a URL (incomplete command, needs a URL to work)
curl https://www.example.com

wget # download files from the web (incomplete command, needs a URL to work)
wget https://www.example.com/file.txt

find # search for files in a directory hierarchy (incomplete command, needs a path and criteria to work)
find /path/to/search -name "*.txt"

sudo su - # switch user to 'yogesh' (incomplete command, needs a password to work)


if [ condition ]; then
    # Commands if condition is true
else
    # Commands if condition is false
fi

num=0

if [ "$num" -gt 0 ]; then
    echo "Positive"
elif [ "$num" -lt 0 ]; then
    echo "Negative"
else
    echo "Zero"
fi

