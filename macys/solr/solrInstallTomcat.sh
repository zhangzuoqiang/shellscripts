#!/bin/bash

set -e

pwd
cd ../
source macysCommon.sh
cd solr

echo "----: INFO : enshuring the tomcat archive exists"
if [ -d $tomcatArchivePath ]
then
    echo "--------: ERROR : the tomcat archive doesn't exist"
    exit
fi

if [ -d $SOLR_TOMCAT ]; then
	echo "----: INFO : SOLR Tomcat instance already exists, stopping and removing..."
	$MACYS_BASEDIR/solr/stopSolr.sh
	rm -rf $SOLR_TOMCAT
fi

cd $TOMCAT_ARCHIVEDIR

echo "----: INFO : Installing SOLR Tomcat..."
tar -zxf $tomcatArchivePath
mv -f $tomcatFileName $SOLR_TOMCAT
cp -f $MACYS_BASEDIR/solr/overrides/bin/startup.sh $SOLR_TOMCAT/bin/
cp -f $MACYS_BASEDIR/solr/overrides/conf/server.xml $SOLR_TOMCAT/conf/
