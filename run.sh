#!/bin/bash

exec=$(find /job/ -name "run_*.sh" -print0)
echo "Found run script '$exec'!" 
if [ -z "$exec" ]; then
	echo "Could not find runnable matlab script matching 'run_*.sh', exiting"
	exit 1
fi

echo "Running '$exec' wit args '$@'"
$exec /usr/local/MATLAB/MATLAB_Runtime/v90 $@
