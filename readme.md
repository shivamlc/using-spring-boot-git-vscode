# Install java and setup spring boot in vs code

## Steps to install Java in Visual Studio Code
Steps to install Java in Visual Studio Code:
```
sudo apt-get update
sudo apt-get install -y openjdk-17-jdk
```


## Verify the installation

```
java -version
```

## Install Spring Boot Extension Pack in Visual Studio Code
1. Open Visual Studio Code.
2. Go to the Extensions view by clicking on the Extensions icon in the Activity Bar on the side of the window or by pressing `Ctrl+Shift+X`.
3. Search for "Spring Boot Extension Pack".
4. Click on the "Install" button for the Spring Boot Extension Pack by Pivotal.
5. Wait for the installation to complete.
6. Once installed, you can start creating Spring Boot applications using the features provided by the extension pack.


## Create a new Spring Boot project

To create a Maven-based Spring Boot project using Spring Initializr, use the following command:

```
curl https://start.spring.io/starter.zip -d dependencies=web,actuator,h2 -d name=demo -d type=maven-project -o demo.zip
unzip demo.zip -d demo
cd demo
./mvnw spring-boot:run
```

You can specify the project name, artifact name, and group name using the parameters: name, artifactId, and groupId. For example:

```
curl https://start.spring.io/starter.zip \
  -d dependencies=web,actuator,h2 \
  -d name=myproject \
  -d artifactId=my-artifact \
  -d groupId=com.example \
  -d type=maven-project \
  -o myproject.zip
unzip myproject.zip -d myproject
cd myproject
./mvnw spring-boot:run
```

or use the create_spring_boot_project.sh script. For example: 

```
chmod +x create_spring_boot_project.sh

./create_spring_boot_project.sh myproject my-artifact com.example "web,actuator,h2"
```



