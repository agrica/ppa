POM Parent Agrica  [![Build Status](https://travis-ci.com/agrica/ppa.svg?branch=master)](https://travis-ci.com/agrica/ppa)
========

# Maven command
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
