#!/bin/bash

#install maven
sudo apt-get -y install maven

#create project using mvn
mvn archetype:generate -DgroupId=com.mycompany.app -DartifactId=my-app -DarchetypeArtifactId=maven-archetype-quickstart -DarchetypeVersion=1.4 -DinteractiveMode=false

#copy gitignore and readme
cp -t ./my-app ./README.md ./.gitignore

cd ./my-app/
#deleting
rm -rf ./src/main/java/com/mycompany/app/App.java
rm -rf ./src/test/java/com/mycompany/app/AppTest.java

#initial commit
git init
git add .
git commit -m "Initial commit"