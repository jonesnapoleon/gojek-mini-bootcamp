#!/bin/bash

#install maven
sudo apt-get -y install maven

#create project using mvn
mvn archetype:generate -DgroupId=com.gojek.app -DartifactId=game-of-life -DarchetypeArtifactId=maven-archetype-quickstart -DarchetypeVersion=1.4 -DinteractiveMode=false

#copy gitignore and readme
cp -t ./game-of-life ./README.md ./.gitignore

cd ./game-of-life/

#deleting
rm -rf ./src/main/java/com/gojek/app/App.java
rm -rf ./src/test/java/com/gojek/app/AppTest.java

#initial commit
git init
git add .
git commit -m "Initial commit"