# Centos5 dockerfile

Private dockerfile, used set up a buid environment.

## Base Docker Image

[centos official docker image](https://hub.docker.com/r/_/centos/)

## User/Password

* root/root
* dev/dev

## Install tools

* sudo
* zip
* unzip
* passwd
* chpasswd
* wget
* curl

## Usage (example)

1. clone
2. docker build

    ``` bash
    $ docker build -t ttekun/centos:5 .
    ```

3. docker run

    ``` bash
    $ docker run -it --rm ttekun/centos:5 bash
    ```
