# Creating an SD Image 

## Getting a backup done 

### On Ubuntu 
- check for connected devices ``df -h`` 
- Do the Back Up `sudo dd if=/dev/sdXX of=~/sd-card-copy.img`. Make sure to replace XX with the appropriate symbols. Example:
`sudo dd if=/dev/sde of=/media/teamlary/Team_Lary_1/gitGubRepos/data/images/GISNode/GISNode.img`

### On Macs 
```
diskutil unmountDisk /dev/disk2
sudo dd if=/dev/disk2 of=output.iso bs=1m
hdiutil verify output.iso
diskutil eject /dev/disk2
```

## Troubleshooting of Resource busy
- check for connected devices list `diskutil list`
- unmount the device `sudo diskutil unmount $device`
- then try the above code for backup
  
## Download and install Etcher 
 - Download link can be found [here](https://www.balena.io/etcher/):
 - unzip and run(on Ubuntu)
 
## Mount the Ubuntu Image on to the SD Card 
 - Plug in the USD SD card reader 
 - Open Etcher 
 - Select the downloaded XU4 Image 
 - Cheose the relavent SD Card Reader 
 - Flash the image
