
# NFS Mount 

- Install NFS 
```
sudo apt-get update
sudo apt install nfs-kernel-server
sudo apt-get install nfs-common
```

- Setting up a directory to mount which ever drive 
```
sudo mkdir -pv /Volumes/ExampleFolder 
sudo chown -R nobody:nogroup /Volumes/*
sudo chown -R 777 /Volumes/*
```
**For this case `/Volumes ` directory is used to mount NFS partitians **

- Edit `/etc/fstab` 

```sudo nano /etc/fstab```

Add the following line 
``` sourceIP:/location/in/source /local/Location nfs defaults,_netdev 0 0```
eg: ```10.173.44.20:/volume1/MINTSNASMEDIA /Volumes/MINTSNASMEDIA nfs defaults,_netdev 0 0```

- Either restart NFS or reboot 
   - Restart NFS: ```sudo systemctl restart nfs-kernel-server```
   - Reboot PC  : ```sudo reboot```
   
