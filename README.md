# stubby-docker

This project is for building a container with the stubby dns service in, without having to checkout the project and build it. It relys on the Docker tookit.

These files have been tested on rasberian (bullseye), but should work on any OS

## Prerequisites 

Install docker-io and docker-compose.

## Configuration

Create a stubby.yml file in the root of the project folder. 

This will need setting up to connect to the dns of your choice. 

Please see, for more details,

https://github.com/getdnsapi/stubby/blob/develop/stubby.yml.example

This project runs on port 5355, please change the docker-compose file to amend this. 

## Build and Run

First build the image using

` sudo docker build -t stubby:latest . `

Next run, 

` sudo docker-compose up -d ` 


## Thank you 

https://github.com/getdnsapi/stubby/
