#!/bin/bash

# Author : Eshan Roy
# Author URI : https://github.com/eshanized

cd x86_64

rm snigdhaos-extra*

echo "Repo Adding..."
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


echo "Repo Updated..."
echo "*******************************************************************************"
echo "<-- previous directory"
cd ..
echo "Execution Push script..."
./push.sh
echo "DONE"
