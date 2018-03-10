#/bin/bash

if [[ $TRAVIS_PULL_REQUEST != "false" ]]
then
	echo "Uploading artifacts..."
	curl -X POST -F "file=@file1.zip" -F "file=@file2.zip" http://srv01.apyos.com:4000/travis/artifacts/$TRAVIS_BUILD_ID
fi
