#!/bin/sh

####################################################################
# This program removes the specified file/folder from the trashcan #
####################################################################

trash_content_list=`ls "/home/${USER}/.trashcan"`

read -p "Are you sure you want to delete this file/folder permanently ?(y/n): " user_input
while [ 1 -eq 1 ]; do
  if [ "$user_input" = "y" -o "$user_input" = "n" ]; then
    break
  else
    read -p "Please enter a valid input(y/n): " user_input
  fi
done

if [ "$user_input" = "y" ]; then
  for file in $trash_content_list; do
    if [ "$file" = "$1" ]; then
      rm -rf "/home/${USER}/.trashcan/$file"
      echo "Removed ${file}"
    fi
  done
else
  echo "Okay. Let's not remove it."
fi

echo "Done!"
echo "Thanks for using our trash-suite"

