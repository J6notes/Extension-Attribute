#!/bin/bash
# Created by Jonathan Synotte
# Creation date : July 5th 2023
# Modified : 

# Variable for the path of the FS Agent config file 
JSON="/Library/Freshservice-Agent/Freshservice-Discovery-Agent/conf/Configuration.json"

# Look if the file is present.
if [ -f "${JSON}" ]; then
	# Find the Version information and give only the version number
	RESULT=$(grep -o '"VersionInfo": *"[^"]*"' $JSON | awk -F'"' '{print $4}')
else
	RESULT="Not Present"
fi

# Show the information in Jamf
echo "<result>${RESULT}</result>"

exit 0