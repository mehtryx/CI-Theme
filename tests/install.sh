#!/bin/bash
set -ev
CURRENT_FOLDER="$(basename "$(pwd)")"
#svn co http://develop.svn.wordpress.org/trunk/ ./
if [ "tests" = $CURRENT_FOLDER ]; then
	echo "Retrieving wordpress trunk files...."
	svn co http://develop.svn.wordpress.org/trunk/ ./
	
	echo "copying the sample test file"
	cp wp-tests-config-sample.php wp-tests-config.php
	
	echo "Inserting travis-ci specific credentials for mysql"
	sed -i ".bak" -f sed_commands wp-tests-config.php
	rm wp-tests-config.php.bak
	
else
	echo "Please execute from within the tests folder!"
fi
