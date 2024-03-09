#!/bin/bash

url="https://discord.com/api/download/stable?platform=linux&format=tar.gz"
name="Discord"
tarname="discord.tar.gz"
tmpdir=$(mktemp -d /tmp/discord-update.XXXXXX)
extractdir="$HOME/opt"
origdir=`pwd`

# navigate to the temp directory
cd $tmpdir

# kill all processes called discord
echo Killing all processes called $name
for KILLPID in `ps ax | grep $name | awk ' { print $1;}'`; do
 kill -9 $KILLPID &> /dev/null
done


echo
echo Getting latest version of $name from $url...
wget -q --show-progress -O $tarname $url

if [ ! -d $extractdir ] ; then
 echo $extractdir does not exist, creating.
 mkdir -p $extractdir
fi

# install the deb
echo
echo Installing $tarname...
#sudo dpkg -i $debname
cd $extractdir
tar xvf "$tmpdir/$tarname"
cd $origdir

# removing the temp directory
echo
echo "Cleaning up..."
rm -r $tmpdir

echo Finished;
echo You can now launch Discord;