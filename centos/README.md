# Dockerfile for Centos

## Base Docker Image

- [centos official docker image](https://hub.docker.com/r/_/centos/)

## Install tools

* sudo
* zip
* unzip
* passwd
* chpasswd
* wget
* curl

## User/Password

* root/root
* dev/dev

## Usage

``` bash
$ docker build -t REPOSITORY[:TAG] .
```

## Example(Docker run and access container by SSH
1. clone this repo

    ``` bash
    $ git clone https://github.com/ttekun/docker-base.git
    ```

2. docker build

    ``` bash
    $ docker build -t ttekun/centos:7 docker-base/centos/.
    ```

3. docker run

    ``` bash
    $ docker run -i -t -d --name centos7 ttekun/centos:7
    ```

4. acces docker container

    ``` bash
    $ docker exec -i -t centos7 bash
    ```
