# Configure Direct Connect Nodes

1. Go to [dwservice](https://www.dwservice.net/) and click on appropriate device. Open shell.
2. Change user from root to teamlary : ```su teamlary```. Go to home by running ```cd ..```.
3. Go to the following loccation by running ```cd home/teamlary/gitHubRepos```
4. Clone the appropriate git repo for the device type by running ```git clone url``` where you replace ```url``` with the github repo url.
5. Get Credential File from Box (https://utdallas.app.box.com/folder/157642619150)
6. Go to ```$node name$/firmware/xu4Mqtt/mintsXU4``` and upload ```credentials.yml (or .yaml)``` in this location. ```$node name$``` will be the cloned repo folder name in your case.
7. Run  ```python3 ipReader.py``` and ```python3 ips7100ReaderV1.py``` one by one to check if the sensors are working. The files are located at ```$node name$/firmware/xu4Mqtt```. To interrupt the python codes press Ctrl + Z
8. Run ```crontab -l``` to check the running processes.
9. In the **xu4Mqtt** folder Run ```cat xu4Cron.txt``` and copy the contents of the file.
10. Run ```crontab -e ``` and go to the bottom of the last line and paste. Then press Enter (**important**).
11. Type ``` Ctrl + X ``` then press ```y``` and press ```Enter``` twice. It will be saved.
12. In the **xu4Mqtt** folder Run ```cat sudoXu4Cron.txt``` and copy the contents of the file.
13. Run ```sudo crontab -e ```. Type the password.
14.  Make existing lines comment by puttin a ```#``` before them. Below those lines, paste the copied contents from **Step 11**. Then press Enter (**important**).
15. Type ``` Ctrl + X ``` then press ```y``` and press ```Enter``` twice. It will be saved.
16. Run ```sudo reboot```


