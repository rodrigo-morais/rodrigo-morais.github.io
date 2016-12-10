#!/bin/bash

clear

echo "PUBLISHING IN DEVELOPMENT BLOG"

echo
echo

echo "removing _site folder"
rm -R _site

echo
echo

echo "recreating _site folder"
jekyll build

echo
echo

echo "coping _site folder content to rodrigo-morais.github.io"
cp -R _site/ ../rodrigo-morais.github.io

echo
echo

echo "publishing blog"
cd ~/Projects/personal/rodrigo-morais.github.io/
git add .
DATE=`date +%Y-%m-%d:%H:%M:%S`
git commit -m "Publishing the last version of blog $DATE"
git push origin master
