Original by [Blacktea1501](github.com/Blacktea1501)

# Discord Updater
Downloads and install the latest Discord version for Linux.

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

The scripts folder can be added to your `$PATH` variable, so you can run the script from anywhere. To do this, add the following line to your `.bashrc` file:
```bash
export PATH=/home/user/scripts:$PATH
```
**DO NOT FORGET TO ADD `$PATH` TO THE END. We don't want to break your cmdline!**  

Now you can simply run the script by typing `discord-update` in your terminal:
```bash
discord-update
```