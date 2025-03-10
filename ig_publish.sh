#!/bin/bash

# pre processing the markdown files in the input/pages-source folder and output the result into the input/pagecontent folder
python pre_process_pages.py --top-level chapters_top_level.md

# customized IG Publisher scripts to make the Jekyll use the _config.yml under the project root directory
publisher_jar=publisher.jar
input_cache_path=./input-cache/
echo Checking internet connection...
curl -sSf tx.fhir.org > /dev/null

if [ $? -eq 0 ]; then
	echo "Online"
	txoption=""
else
	echo "Offline"
	txoption="-tx n/a"
fi

echo "$txoption"

export JAVA_TOOL_OPTIONS="$JAVA_TOOL_OPTIONS -Dfile.encoding=UTF-8"

publisher=$input_cache_path/$publisher_jar
if test -f "$publisher"; then
	java -jar $publisher -ig . -jekyll "../../jekyll-run.sh" $txoption $*

else
	publisher=../$publisher_jar
	if test -f "$publisher"; then
		java -jar $publisher -ig .  -jekyll "../../jekyll-run.sh" $txoption $*
	else
		echo IG Publisher NOT FOUND in input-cache or parent folder.  Please run _updatePublisher.  Aborting...
	fi
fi

