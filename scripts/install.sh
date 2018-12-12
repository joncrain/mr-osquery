#!/bin/bash

# osquery controller
CTL="${BASEURL}index.php?/module/osquery/"

# Get the scripts in the proper directories
# "${CURL[@]}" "${CTL}get_script/osqueryd" -o "${MUNKIPATH}osqueryd"
"${CURL[@]}" "${CTL}get_script/osqueryi" -o "${MUNKIPATH}osqueryi"

# Check exit status of curl
if [ $? = 0 ]; then
	# Make executable
	# chmod a+x "${MUNKIPATH}osqueryd"
	chmod a+x "${MUNKIPATH}osqueryi"

else
	echo "Failed to download all required components!"
	rm -f "${MUNKIPATH}osquery*"

	# Signal that we had an error
	ERR=1
fi
