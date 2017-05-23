FROM microsoft/windowsservercore
MAINTAINER Rivaaj Jumna

ADD jdk c:\java
RUN setx JAVA_HOME "c:\java"
RUN setx PATH "%PATH%;%JAVA_HOME%\bin"