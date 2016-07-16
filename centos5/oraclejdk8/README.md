# Oracle jdk8 dockerfile

Private dockerfile, used set up a buid environment.

## Base Docker Image

[customized centos5 docker image](https://hub.docker.com/r/ttekun/centos/)

## JDK Version

jdk1.8.0_91

## Usage (example)

1. clone
2. docker build

    ``` bash
    $ docker build -t ttekun/centos5-oraclejdk:8 .
    ```

3. docker run

    ``` bash
    $ docker run -it --rm ttekun/centos5-oraclejdk:8 bash
    ```
