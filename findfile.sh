#this script let's us know if the file exists or not
#!/bin/bash
FILE="$1"

if [ "$#" -ne 1 ];
then
echo "Please eneter the file name"
exit 1
fi

if [ -f "$FILE" ];
then
echo "$FILE exist"
else
echo "$FILE doesnt exist"
fi
