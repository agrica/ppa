POM Parent Agrica
========

# Maven command
## List plugins
```
mvn dependency:resolve-plugins
```

# Release
```
mvn -B release:prepare release:perform -DreleaseVersion=0.1.1 -DdevelopmentVersion=0.1.2-SNAPSHOT
```
