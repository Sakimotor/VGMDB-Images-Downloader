#!/bin/bash
i=0
if  [ $# -eq 0 ]
then
	echo "Input the game name you want to search";
	read game;
else
	game="$*"
	echo "$game"
fi


query=$(echo "$game"| sed 's/ /%20/'g)
curl http://vgmdb.info/search/$query?format=json | grep "link\": \"album" | sed -e 's/link\": \"//' -e 's/\"//'g -e 's/,//' | while read -r line ; do
	if [ "$i" -eq "0" ]
	then
		mkdir "$game"
		cd "$game"
	fi
	i=$((i+1))
	curl http://vgmdb.info/$line?format=json | grep "picture_full" | tail -1 | sed -e 's/picture_full\": \"//' -e 's/\"//'g -e 's/,//' | xargs -I '{}' wget --output-document="cover$i".png '{}'
done
cd ../


