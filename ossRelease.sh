#!/bin/bash -e

VERSION=${1:-0.0.1-SNAPSHOT}

echo "1- Create branch 'prepare-release'"
git co -b prepare-release

echo "2- Set Maven Version $VERSION"
mvn versions:set -DgenerateBackupPoms=false -DnewVersion=$VERSION
mvn clean install
git commit -am "Prépare Release version $VERSION"

echo "3- Create Maven Tag $VERSION"
git tag -a ossrh-$VERSION -m "Release version $VERSION"
git push origin ossrh-$VERSION

echo "Delete branch 'prepare-release'"
git checkout master
git branch -D prepare-release

# Not work pour 0-M3
git merge ossrh-$VERSION
mvn org.codehaus.mojo:versions-maven-plugin:2.8.1:set -DgenerateBackupPoms=false -DnextSnapshot=true
git commit -am "Prepare Next Snapshot"
git push origin master
