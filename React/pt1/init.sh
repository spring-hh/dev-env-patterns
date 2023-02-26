#!/bin/zsh

# if $1 is not empty, then use it as the project name
if [[ -n $1 ]]; then
  PROJECT_NAME=$1
else
  PROJECT_NAME="app"
fi

# if directory $PROJECT_NAME exists, then exit
if [[ -d $PROJECT_NAME ]]; then
  echo "Directory $PROJECT_NAME already exists. Exiting..."
  exit 1
fi

docker-compose run web npx create-react-app $PROJECT_NAME --template typescript