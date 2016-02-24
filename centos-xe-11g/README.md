# centos-xe-11g
Oracle Express Edition 11g Release 2 on Centos5

## Base Docker Image
- [ttekun/centos5-oraclexe11g](https://hub.docker.com/r/ttekun/centos5-oraclexe11g)

## Pull and Run

```
docker pull ttekun/centos5-oraclexe11g
docker run -it ttekun/centos5-oraclexe11g /bin/bash
```

## Start and Stop

```
$/usr/sbin/oracle-xe-startup.sh
$service oracle-xe stop
```
