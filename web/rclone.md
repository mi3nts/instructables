# rclone
Some of the MINTS Data systems are saved in cloud storage. Rclone is used to keep backups of such data on local desktops.

## Installation 

 -  Download and unpack scripts 
 ```
  curl -O https://downloads.rclone.org/rclone-current-linux-amd64.zip
  unzip rclone-current-linux-amd64.zip
  cd rclone-*-linux-amd64
  
```
Note: Malke sure to replace * with the appropriate rclone installation file name (Example:```cd rclone-v1.52.3-linux-amd64/``` )

- Copy binary files
```
  sudo cp rclone /usr/bin/
  sudo chown root:root /usr/bin/rclone
  sudo chmod 755 /usr/bin/rclone
```

- Install manpage
```
sudo mkdir -p /usr/local/share/man/man1
sudo cp rclone.1 /usr/local/share/man/man1/
sudo mandb 
```


## Rclone with google drive 

- Configaration 
```rclone config```
<pre>No remotes found - make a new one
n) New remote
s) Set configuration password
q) Quit config
</pre>

<pre>name&gt; </pre>
Type in a name for your drive. This is a label(token) to be used when reffereing to the drive folder.
Eg: <pre>name&gt; googleDrivePalasStream
</pre>
<pre>Type of storage to configure.
Enter a string value. Press Enter for the default (&quot;&quot;).
Choose a number from below, or type in your own value
<font color="#EF2929"> 1 / 1Fichier</font>
<font color="#EF2929">   \ &quot;fichier&quot;</font>
<font color="#8AE234"> 2 / Alias for an existing remote</font>
<font color="#8AE234">   \ &quot;alias&quot;</font>
<font color="#EF2929"> 3 / Amazon Drive</font>
<font color="#EF2929">   \ &quot;amazon cloud drive&quot;</font>
<font color="#8AE234"> 4 / Amazon S3 Compliant Storage Provider (AWS, Alibaba, Ceph, Digital Ocean, Dreamhost, IBM COS, Minio, etc)</font>
<font color="#8AE234">   \ &quot;s3&quot;</font>
<font color="#EF2929"> 5 / Backblaze B2</font>
<font color="#EF2929">   \ &quot;b2&quot;</font>
<font color="#8AE234"> 6 / Box</font>
<font color="#8AE234">   \ &quot;box&quot;</font>
<font color="#EF2929"> 7 / Cache a remote</font>
<font color="#EF2929">   \ &quot;cache&quot;</font>
<font color="#8AE234"> 8 / Citrix Sharefile</font>
<font color="#8AE234">   \ &quot;sharefile&quot;</font>
<font color="#EF2929"> 9 / Dropbox</font>
<font color="#EF2929">   \ &quot;dropbox&quot;</font>
<font color="#8AE234">10 / Encrypt/Decrypt a remote</font>
<font color="#8AE234">   \ &quot;crypt&quot;</font>
<font color="#EF2929">11 / FTP Connection</font>
<font color="#EF2929">   \ &quot;ftp&quot;</font>
<font color="#8AE234">12 / Google Cloud Storage (this is not Google Drive)</font>
<font color="#8AE234">   \ &quot;google cloud storage&quot;</font>
<font color="#EF2929">13 / Google Drive</font>
<font color="#EF2929">   \ &quot;drive&quot;</font>
<font color="#8AE234">14 / Google Photos</font>
<font color="#8AE234">   \ &quot;google photos&quot;</font>
<font color="#EF2929">15 / Hubic</font>
<font color="#EF2929">   \ &quot;hubic&quot;</font>
<font color="#8AE234">16 / In memory object storage system.</font>
<font color="#8AE234">   \ &quot;memory&quot;</font>
<font color="#EF2929">17 / Jottacloud</font>
<font color="#EF2929">   \ &quot;jottacloud&quot;</font>
<font color="#8AE234">18 / Koofr</font>
<font color="#8AE234">   \ &quot;koofr&quot;</font>
<font color="#EF2929">19 / Local Disk</font>
<font color="#EF2929">   \ &quot;local&quot;</font>
<font color="#8AE234">20 / Mail.ru Cloud</font>
<font color="#8AE234">   \ &quot;mailru&quot;</font>
<font color="#EF2929">21 / Mega</font>
<font color="#EF2929">   \ &quot;mega&quot;</font>
<font color="#8AE234">22 / Microsoft Azure Blob Storage</font>
<font color="#8AE234">   \ &quot;azureblob&quot;</font>
<font color="#EF2929">23 / Microsoft OneDrive</font>
<font color="#EF2929">   \ &quot;onedrive&quot;</font>
<font color="#8AE234">24 / OpenDrive</font>
<font color="#8AE234">   \ &quot;opendrive&quot;</font>
<font color="#EF2929">25 / OpenStack Swift (Rackspace Cloud Files, Memset Memstore, OVH)</font>
<font color="#EF2929">   \ &quot;swift&quot;</font>
<font color="#8AE234">26 / Pcloud</font>
<font color="#8AE234">   \ &quot;pcloud&quot;</font>
<font color="#EF2929">27 / Put.io</font>
<font color="#EF2929">   \ &quot;putio&quot;</font>
<font color="#8AE234">28 / QingCloud Object Storage</font>
<font color="#8AE234">   \ &quot;qingstor&quot;</font>
<font color="#EF2929">29 / SSH/SFTP Connection</font>
<font color="#EF2929">   \ &quot;sftp&quot;</font>
<font color="#8AE234">30 / Sugarsync</font>
<font color="#8AE234">   \ &quot;sugarsync&quot;</font>
<font color="#EF2929">31 / Tardigrade Decentralized Cloud Storage</font>
<font color="#EF2929">   \ &quot;tardigrade&quot;</font>
<font color="#8AE234">32 / Transparently chunk/split large files</font>
<font color="#8AE234">   \ &quot;chunker&quot;</font>
<font color="#EF2929">33 / Union merges the contents of several upstream fs</font>
<font color="#EF2929">   \ &quot;union&quot;</font>
<font color="#8AE234">34 / Webdav</font>
<font color="#8AE234">   \ &quot;webdav&quot;</font>
<font color="#EF2929">35 / Yandex Disk</font>
<font color="#EF2929">   \ &quot;yandex&quot;</font>
<font color="#8AE234">36 / http Connection</font>
<font color="#8AE234">   \ &quot;http&quot;</font>
<font color="#EF2929">37 / premiumize.me</font>
<font color="#EF2929">   \ &quot;premiumizeme&quot;</font>
<font color="#8AE234">38 / seafile</font>
<font color="#8AE234">   \ &quot;seafile&quot;</font>
Storage&gt; 
</pre>
Choose ``` 13```

<pre>Storage&gt; 13
** See help for drive backend at: https://rclone.org/drive/ **

Google Application Client Id
Setting your own is recommended.
See https://rclone.org/drive/#making-your-own-client-id for how to create your own.
If you leave this blank, it will use an internal key which is low performance.
Enter a string value. Press Enter for the default (&quot;&quot;).
client_id&gt;   </pre>

At this point if you havent set up a client ID go to [https://rclone.org/drive/#making-your-own-client-id] and follow the insturctions given to gain a client ID and a secret ID. 
Once you know the ID you can proceed in entering client and secret IDs.

<pre>Google Application Client Id
Setting your own is recommended.
See https://rclone.org/drive/#making-your-own-client-id for how to create your own.
If you leave this blank, it will use an internal key which is low performance.
Enter a string value. Press Enter for the default (&quot;&quot;).
client_id&gt; 255649722334-5koj5q6ltahb923skl2hi4f309047fjn.apps.googleusercontent.com
Google Application Client Secret
Setting your own is recommended.
Enter a string value. Press Enter for the default (&quot;&quot;).
client_secret&gt; 1xbvO-OatEzZroUYoZ-s_waQ
Scope that rclone should use when requesting access from drive.
Enter a string value. Press Enter for the default (&quot;&quot;).
Choose a number from below, or type in your own value
<font color="#EF2929"> 1 / Full access all files, excluding Application Data Folder.</font>
<font color="#EF2929">   \ &quot;drive&quot;</font>
<font color="#8AE234"> 2 / Read-only access to file metadata and file contents.</font>
<font color="#8AE234">   \ &quot;drive.readonly&quot;</font>
<font color="#EF2929">   / Access to files created by rclone only.</font>
<font color="#EF2929"> 3 | These are visible in the drive website.</font>
<font color="#EF2929">   | File authorization is revoked when the user deauthorizes the app.</font>
<font color="#EF2929">   \ &quot;drive.file&quot;</font>
<font color="#8AE234">   / Allows read and write access to the Application Data folder.</font>
<font color="#8AE234"> 4 | This is not visible in the drive website.</font>
<font color="#8AE234">   \ &quot;drive.appfolder&quot;</font>
<font color="#EF2929">   / Allows read-only access to file metadata but</font>
<font color="#EF2929"> 5 | does not allow any access to read or download file content.</font>
<font color="#EF2929">   \ &quot;drive.metadata.readonly&quot;</font>
scope&gt; 2
ID of the root folder
Leave blank normally.

Fill in to access &quot;Computers&quot; folders (see docs), or for rclone to use
a non root folder as its starting point.

Enter a string value. Press Enter for the default (&quot;&quot;).
root_folder_id&gt; 
Service Account Credentials JSON file path 
Leave blank normally.
Needed only if you want use SA instead of interactive login.
Enter a string value. Press Enter for the default (&quot;&quot;).
service_account_file&gt; 
Edit advanced config? (y/n)
y) Yes
n) No (default)
y/n&gt; n
Remote config
Use auto config?
 * Say Y if not sure
 * Say N if you are working on a remote or headless machine
y) Yes (default)
n) No
y/n&gt; y
If your browser doesn&apos;t open automatically go to the following link: http://127.0.0.1:53682/auth?state=tSTr06C9wMebVIccGVcFtg
Log in and authorize rclone for access
Waiting for code...
Got code
Configure this as a team drive?
y) Yes
n) No (default)
y/n&gt; n
--------------------
[googleDrivePalasStream]
type = drive
client_id = xxxxx
client_secret = yyyyyy
scope = drive.readonly
token = {&quot;access_token&quot;:&quot;ya29.a0AfH6SMDqWKGJZgtj6fRfOM3uCvMXiBD6kHEMCGbqC0RP1LZKgncGe3y1_FO-n6_VPUDxy2CSHbV8LuXz6CMiDGNLLW3ImRJ7WJBsVamCkHBLuEtp54cUJk_09sKIN3EuFVw7ETTUilvKxjp2tdgYVQoMCHT0O6QDeh8&quot;,&quot;token_type&quot;:&quot;Bearer&quot;,&quot;refresh_token&quot;:&quot;1//0fZjulyBFXmPrCgYIARAAGA8SNwF-L9IrNC3nsYouOSikg7rEzZmZJmcLs40iDCNe-4cYpmU3vVoSSwEVwjzHLkCQUR1Cc-UJJzg&quot;,&quot;expiry&quot;:&quot;2020-08-24T00:04:40.359554215-05:00&quot;}
--------------------
y) Yes this is OK (default)
e) Edit this remote
d) Delete this remote
y/e/d&gt; y
Current remotes:

Name                 Type
====                 ====
googleDrivePalasStream drive

e) Edit existing remote
n) New remote
d) Delete remote
r) Rename remote
c) Copy remote
s) Set configuration password
q) Quit config
e/n/d/r/c/s/q&gt; 
</pre>

Usually with Mints Projects read only previledges are set as a precation. The final inputs for configuration can be kept defaualt. 


























