#!/usr/bin/env sh
mkdir -p .cache
cd .cache
VERSION=1.3
if [ ! -f google-java-format-$VERSION-all-deps.jar ]
then
    curl -LJO "https://github.com/google/google-java-format/releases/download/google-java-format-$VERSION/google-java-format-$VERSION-all-deps.jar"
    chmod 755 google-java-format-$VERSION-all-deps.jar
fi
cd ..

java -jar .cache/google-java-format-$VERSION-all-deps.jar --replace $@
