#!/bin/sh
DOWNLOAD_PATH=/tmp/mongolian-phonetic-keyboard
KBL_PATH=$HOME/Library/Keyboard\ Layouts

echo 'Downloading...'
if [ ! -d "$DOWNLOAD_PATH" ]; then
  mkdir -p $DOWNLOAD_PATH
fi
cd $DOWNLOAD_PATH

curl -L https://github.com/batbayar-su/mongolian-phonetic/archive/1.0.zip > mongolian-phonetic.zip
unzip mongolian-phonetic.zip
rm mongolian-phonetic.zip

echo 'Downloaded, copying files...'
if [ ! -d "$KBL_PATH" ]; then
    mkdir -p $KBL_PATH
fi
cp mongolian-phonetic-1.0/Mongolian\ Phonetic.* ~/Library/Keyboard\ Layouts
rm -Rf mongolian-phonetic-1.0

echo 'Finished.'
echo 'Ventura: Go to System Settings -> Keyboard -> Input Sources -> press edit button -> press + button'
echo 'Others: Go to System Preferences -> Keyboard -> Input Sources -> press + button'
echo 'Search "Mongolian phonetic" and press add'
