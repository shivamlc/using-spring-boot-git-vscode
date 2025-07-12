#!/bin/bash
# Usage: ./create_spring_boot_project.sh <project_name> <artifact_id> <group_id> <dependencies>
# Example: ./create_spring_boot_project.sh myproject my-artifact com.example "web,actuator,h2"

PROJECT_NAME=$1
ARTIFACT_ID=$2
GROUP_ID=$3
DEPENDENCIES=$4
VERSION=${5:-3.5.3}

curl -fSL https://start.spring.io/starter.zip \
  -d dependencies=${DEPENDENCIES} \
  -d name=${PROJECT_NAME} \
  -d artifactId=${ARTIFACT_ID} \
  -d groupId=${GROUP_ID} \
  -d type=maven-project \
  -d bootVersion=${VERSION} \
  -o ${PROJECT_NAME}.zip

# Only unzip if the download was successful and the zip file exists
if [ $? -eq 0 ] && [ -f "${PROJECT_NAME}.zip" ]; then
  unzip ${PROJECT_NAME}.zip -d ${PROJECT_NAME}
  cd ${PROJECT_NAME}
  ./mvnw spring-boot:run
else
  echo "Download failed or zip file not found."
  exit 1
fi