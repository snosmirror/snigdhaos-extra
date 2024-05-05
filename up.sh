#!/bin/bash

# Author : Eshan Roy
# Author URI : https://github.com/eshanized

echo
echo "Switching to the Arch Directory..."
echo
cd x86_64

echo
echo "Removing previous database..."
echo
rm snigdhaos-extra*
echo
echo "Adding All Packages to the database..."
echo
repo-add -s -n -R snigdhaos-extra.db.tar.gz *.pkg.tar.zst

sleep 1

rm snigdhaos-extra.db
rm snigdhaos-extra.db.sig

rm snigdhaos-extra.files
rm snigdhaos-extra.files.sig

mv snigdhaos-extra.db.tar.gz snigdhaos-extra.db
mv snigdhaos-extra.db.tar.gz.sig snigdhaos-extra.db.sig

mv snigdhaos-extra.files.tar.gz snigdhaos-extra.files
mv snigdhaos-extra.files.tar.gz.sig snigdhaos-extra.files.sig

echo 
echo "Database Updated..."
echo "*******************************************************************************"
echo 
echo "← Going Back to Parent Directory..."
echo 
cd ..
echo "Execution Push script..."
./push.sh
echo "Completed All Operations"
