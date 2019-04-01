#!/bin/sh
DOWNLOAD_PATH=/tmp/mongolian-phonetic-keyboard
KB_PATH=$HOME/Library/Keyboard\ Layouts

echo 'Downloading...'
if [ ! -d "$DOWNLOAD_PATH" ]; then
  mkdir -p $DOWNLOAD_PATH
fi
cd /tmp/mongolian-phonetic-keyboard

curl -L https://github.com/batbayar-su/mongolian-phonetic/archive/1.0.zip > mongolian-phonetic.zip
unzip mongolian-phonetic.zip
rm mongolian-phonetic.zip

echo 'Copying'
if [ ! -d "$KB_PATH" ]; then
    mkdir -p $KB_PATH
fi
cp mongolian-phonetic-1.0/Mongolian\ Phonetic.* ~/Library/Keyboard\ Layouts
rm -Rf mongolian-phonetic-1.0

echo 'Finished.'
echo 'System Preferences -> Keyboard -> Input Sources -> + гэж ороод'
echo "Mongolian phonetic гэж хайж олоод ашиглаарай"
