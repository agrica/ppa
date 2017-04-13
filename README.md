POM Parent Agrica
========

# Maven command
## List plugins
```
mvn dependency:resolve-plugins
```

# Release
```
mvn -B release:prepare release:perform -DreleaseVersion=0.1.0-M1 -DdevelopmentVersion=0.1.0-SNAPSHOT
```
