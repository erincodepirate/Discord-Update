Original by [Blacktea1501](https://github.com/Blacktea1501)

Based on the version by [Pantonius](https://github.com/Pantonius)

# Discord Updater
Downloads and install the latest Discord version for Linux.

## My Version
This version is intended for use with non-Debian based distributions, it uses the .tar.gz version and extracts it into a folder in your home directory called "opt" (if you wish to change the destination you may change the $extractdir variable in the script to point to the location you would prefer to have it installed). I have also included instructions below to make Discord executable from within your home directory.

## Setup
```bash
# Clone the repository
git clone https://github.com/Pantonius/Discord-Update.git

# Change into the directory
cd Discord-Update

# Make the script executable
chmod +x discord-update.sh
```

## Usage
```bash
./discord-update.sh
```

### Optional
You may prefer to run the script from anywhere on the system.
The best way is to make a symlink to a scripts folder and adding it to your `$PATH` environment varibale.  
Assuming the directory of the repository is on your Desktop and your scripts folder is in your home directory, you can do it like so:
```bash
ln -s /home/user/Desktop/Discord-Update/discord-update.sh /home/user/scripts/discord-update
```

Likewise make Discord executable outside of its own directory you may want to create a symlink to your scripts folder like such:
```bash
ln -s /home/user/opt/Discord/Discord /home/user/scripts/discord
```
You should then be able to just type "discord" from your command prompt to run it.

The scripts folder can be added to your `$PATH` variable, so you can run the script from anywhere. To do this, add the following line to your `.bashrc` file:
```bash
export PATH=/home/user/scripts:$PATH
```
**DO NOT FORGET TO ADD `$PATH` TO THE END. We don't want to break your cmdline!**  

Now you can simply run the script by typing `discord-update` in your terminal:
```bash
discord-update
```
