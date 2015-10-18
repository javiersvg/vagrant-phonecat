#!/bin/bash

 install_dependencies() {
  echo 'installing dependencies'
  sudo apt-get update
  sudo apt-get install -y git
  sudo apt-get install -y openjdk-7-jdk
  sudo apt-get install -y maven
  sudo apt-get install -y mongodb
 }

 create_folders() {
  'creating folders'
  mkdir /home/vagrant/workspace
 }

 fetch_repos() {
  'fetching repos'
  cd /home/vagrant/workspace
  git clone https://github.com/javiersvg/spring-phonecat.git
  sudo chown -R vagrant:vagrant spring-phonecat/
 }

 start_app() {
  cd /home/vagrant/workspace/spring-phonecat
  mvn jetty:run
 }

install_dependencies
create_folders
fetch_repos
start_app