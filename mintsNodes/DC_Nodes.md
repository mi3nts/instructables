1. Change user from root to teamlary : ```su teamlary```. Go to home by running ```cd ..```.
2. Go to the following loccation by running ```cd home/teamlary/gitHubRepos```
3. Clone the appropriate git repo for the device type by running ```git clone url``` where you replace ```url``` with the github repo url.
4. Get Credential File from Box (https://utdallas.app.box.com/folder/157642619150)
5. Go to ```$node name$/firmware/xu4Mqtt/mintsXU4``` and upload ```credentials.yml (or .yaml)``` in this location. ```$node name$``` will be the cloned repo folder name in your case.
6. Run  ```python3 ipReader.py``` and ```python3 ips7100ReaderV1.py``` one by one to check if the sensors are working. The files are located at ```$node name$/firmware/xu4Mqtt```. To interrupt the python codes press Ctrl + Z
7. Run ```crontab -l```


