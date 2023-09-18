# VaLo Node 
Get the list of drives and locate the SD Card

``` sudo fdisk -l ```

Then Copy SD Card using command

``` sudo dd bs=4M if=/dev/sdh of=~/Downloads/sd-card-copy.img conv=fsync status=progress ```
