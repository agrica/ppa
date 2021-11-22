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


# Update Sign certificat
https://github-wiki-see.page/m/cristal-ise/kernel/wiki/Maven-Deploy-Travis-GPG2

## génération des clefs

```bash
# généraion des clef
gpg --gen-key
```

# Export des clefs

```bash
## to find the env GPG_KEYNAME=keyid or keyname
gpg --list-secret-keys

## Export for varaible
## GPG_SECRET_KEYS =
gpg -a --export-secret-keys <keyid> | base64
## GPG_OWNERTRUST =
gpg --export-ownertrust | base64
```

# Enregistrements es clef mondials
```bash
gpg --armor --export agrica-socle-sign
```
A sasir dans l'IHM https://keyserver.ubuntu.com/pks/add
