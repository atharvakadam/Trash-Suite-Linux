#!/bin/sh

######################################################
# This program restores any given file from trashcan #
######################################################

trash_content_list=`ls /trashcan`
file_exists=0

for file in $trash_content_list; do
  if [ "$file" = "$1" ]; then
    echo "$file exists. So yes we can restore it."
    file_exists=1
  fi
done

if [ $file_exists -eq 1 ]; then
  if [ -d $2 ]; then
    sudo mv "/trashcan/$1" $2
    echo "File restored to the directory ${2}"
  else
    echo "Not a directory!. only can restore to a directory."
  fi
else
  echo "File ${1} not found in trash, hence can't restore something that was not removed."
fi


echo "Done!"
echo "Thank you for using our trash-suite"


