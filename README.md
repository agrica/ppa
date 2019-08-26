POM Parent Agrica  [![Build Status](http://jenkins/buildStatus/icon?job=socle/ci-SOCLE-PPA-master)](http://jenkins/job/socle/job/ci-SOCLE-PPA-master)
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
