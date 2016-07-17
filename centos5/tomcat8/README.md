# Apache Tomcat8 dockerfile

Private dockerfile, used set up a buid environment.

## Base Docker Image

[centos5 + oraclejdk8 docker image](https://hub.docker.com/r/ttekun/centos5-oraclejdk/)

## Tomcat Version

8.0.36

## Usage (example)

1. clone
2. docker build

    ``` bash
    $ docker build -t ttekun/centos5-oraclejdk8-tomcat:8 .
    ```

3. docker run

    ``` bash
    $ docker run -d -p 8080:8080 ttekun/centos5-oraclejdk8-tomcat:8
    ```

    or

    ``` bash
    $ docker run -d -p 8080:8080 -e TOMCAT_PASS="mypass" ttekun/centos5-oraclejdk8-tomcat:8
    ```

###### You can now test your deployment:

    http://127.0.0.1:8080/

## docker logs

``` bash
$ docker logs <CONTAINER_ID>
```