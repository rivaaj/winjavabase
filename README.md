# Nano Server Container with JDK 8
A Nano Server container with JKD 8 included. To build an unpacked JDK 8 is required. The included powershell script will unpack JDK 8 and create the JDK folder referenced in the Dockerfile.


## Getting Started

- Download 64 bit JDK 8 installer executable from [here](http://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html)
- Run "unpackjdk8.ps1 <path to JDK 8 installer executable>"
- Build the container image e.g., docker build -t my/winjava .

