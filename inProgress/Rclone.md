Rclone is used to backup the light module data originally stored on a Windows machine on to IMD.

First, in order to use SSH key for authentication, the public key of the Windows machine should be added to the IMD's authorized_keys file.
On Windows:
Display the public key by using:
```
cat $HOME\.ssh\id_rsa.pub
```
Select the entire output and copy it.

On IMD:
Run the following command to edit the authorized_keys file.
```
nano ~/.ssh/authorized_keys
```
Paste your public key into this file. Save and exit.

Download rclone from rclone.org to the Windows computer and follow the instructions to install it.

Install rclone on the linux remote using:
```
curl -O https://downloads.rclone.org/rclone-current-linux-amd64.zi
unzip rclone-current-linux-amd64.zi
cd rclone-*-linux-amd64
```
On Windows:
Open the command prompt and run:
```
rclone config
```
Choose n for a new remote.
Name the remote remote_imd.
For storage type, select SFTP.
Enter SSH information (host and username).
Test the connection by running:
```
rclone lsd remote_linux:/
```

Once Rclone has been set up properly on both ends, a batch script and Windows Task Scheduler are
used to automatically sync the files whenever new content is added to the folder.
Create a batch script that includes:
```
rclone sync "C:\Users\yichao\Desktop\mintsData\raw\001e06453e58" remote_imd:/home/mints/raw/001e06453e58

rclone sync "C:\Users\yichao\Desktop\Minolta\10004098" remote_imd:/home/mints/raw/10004098
```
Set up Task Scheduler to run the script automatically.
