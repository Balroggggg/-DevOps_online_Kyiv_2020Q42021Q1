#!/bin/bash

if  [[ ! -n "$1" ]]
then

	while read LINE; do
		isInFile=$(cat /home/new/cronDir/activeDirs | grep -c "$LINE")
		currentDate=$(date +"%c")
     	if [[ $LINE == "Directory"* ]]
		then
			cd
			cd `echo $LINE | cut -f2 -d" "`;
			currentDir=$(pwd)
			activeDirContent=$(cat /home/new/cronDir/activeDirs)
			newFileName=$(ls | grep -v "$activeDirContent")
			isNewFileAdded=$(ls | grep -cv "$activeDirContent")
			if [[ $isNewFileAdded -gt 0 ]]
			then
			echo "Directory $currentDir" >> /home/new/cronDir/activeDirs
			echo "$newFileName" >> /home/new/cronDir/activeDirs
			echo "$currentDate		File was added          $currentDir/$newFileName" >> /home/new/cronDir/dataBackup.log
			isNewFileAdded=0
			fi
		elif [[ $isInFile -gt 0 && ! -e $LINE ]]
		then
		echo "$currentDate		File was deleted	$currentDir/$LINE" >> /home/new/cronDir/dataBackup.log
		sed -i '/^$LINE/d' /home/new/cronDir/activeDirs
		sed -i '/^\s*$/d' /home/new/cronDir/activeDirs
		fi
	done < /home/new/cronDir/activeDirs

else


	if [[ ! -d "$2" ]]
	then
		mkdir "$2"
	fi

	syncdir="$1*"


	backupDir="$2"

	cp $syncdir  $backupDir

	if [[ ! -d "/home/new/cronDir" ]]
	then
		mkdir /home/new/cronDir
	fi

	echo "Directory $1" | sed 's/.$//'  >> /home/new/cronDir/activeDirs
	ls "$1" >> /home/new/cronDir/activeDirs
	echo "Directory $2" >> /home/new/cronDir/activeDirs
	ls $2"/" >> /home/new/cronDir/activeDirs


	echo "Backup was created here: $backupDir"

fi


