POM Parent Agrica  [![Build Status](https://travis-ci.com/agrica/ppa.svg?branch=master)](https://travis-ci.com/agrica/ppa)
========

# Maven command
## Release OSS
```bash
git co -b prepare-release
mvn versions:set -DgenerateBackupPoms=false -DnewVersion=$VERSION
mvn clean install
git commit -am "Prépare Release version $VERSION"
git tag -a ossrh-$VERSION -m "Release version $VERSION"
git push origin ossrh-$VERSION
git checkout master
git branch -D prepare-release
```
==> https://repo1.maven.org/maven2/io/github/agrica/

## List plugins
```
mvn dependency:resolve-plugins
```

```
mvn versions:display-plugin-updates
```

```
mvn versions:display-dependency-updates
```


# Release
```
mvn -B release:prepare release:perform -DreleaseVersion=0.2.10-M1 -DdevelopmentVersion=0.2.10-SNAPSHOT
```
