#!/bin/sh

#######################################
# Custom script to empty the trashcan #
#######################################

if [ -d "/trashcan" ]
then
  read -p "Are you sure you want to empty your trash can?(Please enter y/n): " user_input
  echo $user_input
  while [ 1 -eq 1 ]; do
    if [ "$user_input" = "y" -o "$user_input" = "n" ]; then
      break
    else
      read  -p "Please enter valid input(y/n): " user_input
    fi
  done
  if [ "$user_input" = "y" ]; then
    echo "Okay!. Lets empty your trash can."
    files_to_del=`ls /trashcan`
    for files in $files_to_del
    do
      echo "${files} deleted"
      sudo rm -rf "/trashcan/$files" 
    done
    echo "Trash can emptied.All files deleted permanently."
  else
    echo "Well okay. Your trash lives to see another day."
  fi
else
  echo "Trashcan doesnt exist. Cannot empty a non existant trash"
fi

echo "Thanks for utilizing our trash_suite"
 

