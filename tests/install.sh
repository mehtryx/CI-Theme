#!/bin/bash
set -ev
CURRENT_FOLDER="$(basename "$(pwd)")"

if [ "tests" = $CURRENT_FOLDER ]; then
	echo "Retrieving wordpress trunk files...."
	svn co --quiet http://develop.svn.wordpress.org/trunk/ ./
	
	echo "copying the sample test file"
	cp wp-tests-config-sample.php wp-tests-config.php
	
	echo "Inserting travis-ci specific credentials for mysql"
	
	# sed works differently on osx than linux, detect if on travis and run correct command
	if [ "$TRAVIS" = true ]; then
		sed -i -f sed_commands wp-tests-config.php
	else
		sed -i ".bak" -f sed_commands wp-tests-config.php
		rm wp-tests-config.php.bak
	fi
else
	echo "Please execute from within the tests folder!"
fi
