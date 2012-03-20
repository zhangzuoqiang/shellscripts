#!/bin/bash

source ../functions.sh
source ../variables.sh

mavenName="apache-maven-3.0.4"
mavenArchiveName=$mavenName"-bin.tar.gz"
mavenArchivePath=$MAVEN_ARCHIVEDIR"/"$mavenArchiveName
mavenArchiveURL="http://mirrors.hostingromania.ro/apache.org/maven/binaries/"$mavenArchiveName

tomcatFileName="apache-tomcat-7.0.26"
tomcatArchiveName=$tomcatFileName".tar.gz"
tomcatArchivePath=$TOMCAT_ARCHIVEDIR/$tomcatArchiveName

