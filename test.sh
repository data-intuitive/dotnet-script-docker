#!/usr/bin/env bash

DNV="${1:-1.2.1}"
docker build -t dotnet-script-local:$DNV --build-arg DNV=$DNV .

ARGUMENT="42"
RESULT=$(docker run --rm --volume="$PWD:/scripts:ro" dotnet-script-local:$DNV test.csx -- "$ARGUMENT")

if [ "$RESULT" = "$ARGUMENT" ]; then
   echo "dotnet-script ran successfully";
   exit;
fi

echo "dotnet-script failed. Expected:"
echo "$ARGUMENT"
echo "but got:"
echo "$RESULT"
exit 1;