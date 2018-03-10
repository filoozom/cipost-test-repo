#/bin/sh

curl -X POST --form "file=@file1.zip;file=@file2.zip" http://srv01.apyos.com:4000/travis/artifacts/$TRAVIS_PULL_REQUEST
