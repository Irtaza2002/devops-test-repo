#!/bin/bash

echo "------------Creating new user------------"
read -p "Enter username: " usr
read -p "Enter password: " pw

sudo useradd -m  "$usr"
echo -e "$pw\n$pw" | sudo passwd "$usr"

echo "-----------New user Created-------------"
