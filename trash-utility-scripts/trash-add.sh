#!/bin/sh

################################################
# Making my own custom trash command for linux #
################################################


# Check if a current trashcan directory exits.
if [ -d "/trashcan" ]
then
  echo "Wow it seems you already are using our trashcan!"
  sudo mv $1 "/trashcan"
  echo "Throwing it in the trashcan"
else
  echo "You dont seem to have our trashcan..."
  echo "No worries. Let's make it for you."
  cd /
  sudo mkdir trashcan
  echo "Trash can made. Now we can discard unwanted files and folders in it"
  sudo mv $1 "/trashcan"
  echo "Throwing the currently unwanted file(s) in it"
fi

echo "Done!"
echo "Thanks for using our trash-suite"




