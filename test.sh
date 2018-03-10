#/bin/bash

if [[ $TRAVIS_PULL_REQUEST != "false" ]]
then
	echo "Uploading artifacts ($TRAVIS_PULL_REQUEST)..."
	curl -X POST -F "file=@file1.zip" -F "file=@file2.zip" http://srv01.apyos.com:4000/travis/artifacts/$TRAVIS_PULL_REQUEST
fi
