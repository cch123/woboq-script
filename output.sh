#!/bin/sh
OUTPUTDIRECTORY=/Users/caochunhui/html/nginx
DATADIRECTORY=$OUTPUTDIRECTORY/../data
BUILDIRECTORY=$PWD
VERSION=`1.0`
codebrowser_generator -b $BUILDIRECTORY -a -o $OUTPUTDIRECTORY -p nginx:$BUILDIRECTORY:$VERSION
codebrowser_indexgenerator $OUTPUTDIRECTORY
cp -rv ./data $DATADIRECTORY
