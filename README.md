# container-java8

This repository is create a container to run java 8 and set environment java_home.

# How build an image
It'll showing an example like:

```
docker build -t java8-container .
```
 The terminal showing this image is creating and installing the java 8.
 
 # How run an container's instance
 It's simple run a container that it showing java version, an example like:
```
docker run java8 java -version
```

The print showed like:

```
java version "1.8.0_131" 
Java(TM) SE Runtime Environment (build 1.8.0_131-b11)
Java HotSpot(TM) 64-Bit Server VM (build 25.131-b11, mixed mode)
```
