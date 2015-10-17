#!/bin/bash

 install_dependencies() {
  echo 'installing dependencies'
  sudo apt-get update
  sudo apt-get install -y git
  sudo apt-get install -y openjdk-7-jdk
  sudo apt-get install -y maven
 }

 create_folders() {
  'creating folders'
  mkdir ~/workspace
 }

 fetch_repos() {
  'fetching repos'
  cd ~/workspace
  git clone git@github.com:javiersvg/spring-phonecat.git
 }

 start_app() {
  cd ~/workspace/spring-phonecat
  mvn jetty:run
 }
