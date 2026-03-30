#!/bin/bash

echo "Create new user using arguments"

sudo useradd -m "$1"
echo -e "$2\n$2" | sudo passwd "$1"

echo -e "new user with argument created\n"

echo "delete user"

sudo userdel $1

echo "deletion completed"

if [$(cat /etc/passwd | grep $1 | wc | awk '{print $1}') -eq 0];
then
	echo "wc = 0 user is deleted"
else
	echo "user exits"
fi
