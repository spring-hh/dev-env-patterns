#!/bin/zsh

# if $1 is not empty, then use it as the project name
if [[ -n $1 ]]; then
  PROJECT_NAME=$1
else
  PROJECT_NAME="config"
fi

# if directory $PROJECT_NAME exists, then exit
if [[ -d $PROJECT_NAME ]]; then
  echo "Directory $PROJECT_NAME already exists. Exiting..."
  exit 1
fi

# Add --remove-orphans flag to remove orphaned containers
docker-compose build
docker-compose run --remove-orphans web django-admin startproject $PROJECT_NAME

# if directory $PROJECT_NAME does not exist, then exit
if [[ ! -d $PROJECT_NAME ]]; then
  echo "Directory $PROJECT_NAME does not exist. Exiting..."
  exit 1
fi

# copy the files from the materials directory to the project directory
cp -r materials/. $PROJECT_NAME