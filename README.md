POM Parent Agrica
========

# Maven command
## List plugins
```
mvn dependency:resolve-plugins
```

# Release
```
mvn -B release:prepare release:perform -DreleaseVersion=0.0.7 -DdevelopmentVersion=0.0.8-SNAPSHOT
```
