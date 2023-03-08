# devops-2022
# DevOps-2022-Project
config the docker image file to run the docker container.

## Overview
This project contains a docker image provides a complete development environment for building Laravel applications with a Bootstrap frontend, Vue.js components, and MySQL database. This Dockerfile is based on the PHP language.

## Tools of use for demonstration
- Docker Desktop
- Virtual Studio Code

## Packages installed.
- php
- Laravel
- Bootstrap
- Vue.js
- Mysql
- Git
- Apache 
- Composer
- etc.

##  Method to create dockerfile
*1. starts with the official php:7.4-apache image as the base image/*
<p float="left">
 <img src="img/1..png" alt="image" width="50%"/> 
</p>

*2. Installs the necessary dependencies and extensions for Laravel, Bootstrap, Vue.js, PHPUnit, and Capistrano. It also installs Git and sets up a MySQL server. using apt-get*
<p float="left">
 <img src="img/2..png" alt="image" width="100%"/> 
</p>
the command -y is mean that whenever the installation asks yes or no it will always answer yes

Git is a version control system, and to check the version or is it installed type this via Jupyter Nootbook
'!git --version'

*3.Install PHP extensions*
<p float="left">
 <img src="img/3..png" alt="image" width="100%"/> 
</p>
for sets up a MySQL server

*4. installs phpunit*
<p float="left">
 <img src="img/4..png" alt="image" width="50%"/> 
</p>

*5.installs Laravel using Composer.It creates a new Laravel project*
<p float="left">
 <img src="img/5..png" alt="image" width="50%"/> 
</p>
Laravel is a PHP web application framework that has a lot of dependencies, including several PHP extensions and libraries.
Installing Laravel using Composer in Docker provides a reliable and easy way to set up a development environment and deploy your application to production.

*6. install node.js and npm*
<p float="left">
 <img src="img/6..png" alt="image" width="50%"/> 
</p>
install choice packages "Node.js, npm" for Vue.js.

*7. installs Capistrano and Travis CI*
<p float="left">
 <img src="img/7..png" alt="image" width="50%"/> 
</p>

*8. Finally, set environment for mysql , configures Apache and php and sets the default command to start Apache.*
<p float="left">
 <img src="img/8..png" alt="image" width="50%"/> 
</p>

*9. Build image*
<p float="left">
 <img src="img/build fail.png" alt="image" width="100%"/> 
</p>

*10. Run docker container*
<p float="left">
 <img src="img/run fail.png" alt="image" width="100%"/> 
</p>

##  Method to demonstrate

*1. docker pull image*
<p float="left">
 <img src="img/docker pull.png" alt="image" width="100%"/> 
</p>

*2. docker run*
<p float="left">
 <img src="img/docker run.png" alt="image" width="100%"/> 
</p>
Now open 'http://localhost:???'

## ERROR
<p float="left">
 <img src="img/run fail.png" alt="image" width="100%"/> 
</p>
