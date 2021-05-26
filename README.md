# MSSQLServer-Container
A dockerfile to create an image for MS SQL Server in windows sub system for linux

## What the image does?
- The image will run a script to restore the AdventureWorks.BAK file to build DB
- Then copy this db to the release/final DB

## How to build and run the dockerfile?
### To build the dockerfile to create an image run the following script
```
  docker build -t container-name:version .
```
### To run the image and create a container
```
  docker run -p <machineportno>:<serverportno(1433)> -d <image-name> --name <container-name>
```
### To clean broken files
```
  docker system prune -f
```

eg :- 
```
docker build -t restored-db:1.0.1 .
docker run --name mssql1 -p 1432:1433 -d restored-db:1.0.1
```
