POM Parent Agrica  [![Build Status](https://travis-ci.com/agrica/ppa.svg?branch=master)](https://travis-ci.com/agrica/ppa)
========

## Usine
* Travis: https://app.travis-ci.com/github/agrica/ppa
* Repo Mondial: https://repo1.maven.org/maven2/io/github/agrica/ppa/

# Maven command
## Release OSS
```bash
./ossRelease.sh 3.x.y
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
