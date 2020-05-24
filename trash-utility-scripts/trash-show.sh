#!/bin/sh

#########################################################
# This program shows all the contents of your trash can #
#########################################################

trash_content_list=`ls "/trashcan"`

echo "The contents of your trashcan are :"
echo "+----------------------------------+"
counter=0
for element in $trash_content_list; do
  echo "${element}"
  counter=`expr $counter + 1`
done
if [ $counter -eq 0 ]; then
  echo "Trash can is empty. Nothing to show."
fi
echo "+----------------------------------+"

echo "Thanks for using our trash-suite"

