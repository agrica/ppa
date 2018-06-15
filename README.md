POM Parent Agrica  [![Build Status](http://jenkins/buildStatus/icon?job=ci-SOCLE-PPA-master)](http://jenkins/view/AOL/job/ci-SOCLE-PPA-master/) 
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
mvn -B release:prepare release:perform -DreleaseVersion=0.1.14 -DdevelopmentVersion=0.1.15-SNAPSHOT
```
