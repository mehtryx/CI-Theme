# CI-Theme

Theme template implementing continuous integration testing

# Installation

In order to run the tests locally, you must execute the tests/install.sh script.  This will pull the wordpress trunk which includes the default testing environment for use with the testing.  It will also prepare any environment variables, move and copy configuration files.  Once complete, the wp-tests-config.php file will need to be modified with your local database information.

# Travis-ci

Running under travis involves setting up the service hook from github.  The configuration is all designed to work with travis-ci out of the box. You can modify paths and file contents, but take care as these are the most common errors encountered with running these tasks, though it may seem counter intuitive, the wordpress trunk is pulled to the root of this tests folder and contains all of it's tests under it's tests/ path.  Thus your wordpress core tests are located in tests/tests/phpunit/tests which should remain the same to avoid numerous path issues.

# gitignore

If you are running the tests locally, you can minimize the bloat of your git repo by not containing the wordpress files. I would recommend the following as your gitignore:

	.gitignore
	tests/
	# The following inclusions ensures the base structure is included to start
	!tests/bootstrap.php
	!tests/custom.xml.dist
	!tests/install.sh
	!tests/custom_tests/
	!tests/logs/


# Created By
* Keith Benedict
* Michael Joseph
