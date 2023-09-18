# VaLo Node 
Get the list of drives and locate the SD Card

``` sudo fdisk -l ```

Then Copy SD Card. For example, suppose your SD Card is listed as sdh, and you want to copy in the Downloads Folder and name it sd-card-copy.img, use

``` sudo dd bs=4M if=/dev/sdh of=~/Downloads/sd-card-copy.img conv=fsync status=progress ```

Change the owner from root to the user. In the following code, replace $USER with your local username in the pc.

``` sudo chown $USER: ~/Downloads/sd-card-copy.img ```
