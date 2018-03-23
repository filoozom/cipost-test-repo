#/bin/bash

if [[ $TRAVIS_PULL_REQUEST != "false" ]]
then
	echo "Uploading artifacts..."
	curl -X POST -F "file=@file1.zip" -F "file=@file2.zip" -F "comment=Files: [file1.zip], [file2.zip]" https://artipost.io/travis/artifacts/$TRAVIS_BUILD_ID
fi
