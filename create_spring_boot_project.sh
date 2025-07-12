#!/bin/bash
# Usage: ./create_spring_boot_project.sh <project_name> <artifact_id> <group_id> <dependencies>
# Example: ./create_spring_boot_project.sh myproject my-artifact com.example "web,actuator,h2"

PROJECT_NAME=$1
ARTIFACT_ID=$2
GROUP_ID=$3
DEPENDENCIES=$4

curl https://start.spring.io/starter.zip \
  -d dependencies=${DEPENDENCIES} \
  -d name=${PROJECT_NAME} \
  -d artifactId=${ARTIFACT_ID} \
  -d groupId=${GROUP_ID} \
  -d type=maven-project \
  -o ${PROJECT_NAME}.zip
unzip ${PROJECT_NAME}.zip -d ${PROJECT_NAME}
cd ${PROJECT_NAME}
./mvnw spring-boot:run