 

# Dockerised symfony 4 enviromnment:
This is a simple dockerised symfony 4 environment.

Services:
* PHP
* Nginx
* MySQL

## Prerequisites

Docker and Docker Compose must be installed on your computer:
[Documentation](https://docs.docker.com)

## Getting started

Inside the docker folder
* Copy the the docker-compose.yml.dist file to docker-compose.yml
* Copy the nginx.conf.dist to nginx.conf
* Add a new host to your hosts file:
```
127.0.0.1    symfony4.local
```

## Default Configuration
    * Nginx port: 80
    * MySQL port: 3306
    * Host name: symfony4.local

## Run

Run the following commands **from the docker folder** :

Run once to build:
```
docker-compose build
```

Run to start the services:
```
docker-compose up
```





