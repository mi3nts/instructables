# Continuous Integration and Continuous Deployment (CI/CD) Support

## IMD Dependencies for MINTS
Data from MINTS nodes is received via three different data pipelines:

- **RSYNC Data from Directly Connected Nodes**: Data is synchronized from directly connected nodes using rsync scripts. IMD automatically syncs this data upon reboot. SSH keys are set up for secure connections.

- **MQTT Data from Directly Connected Nodes**: Data from directly connected nodes is collected using MQTT and saved as a backup to the RSYNC data. The firmware for this task can be found at [GitHub - mi3nts/mqttSubscribers](https://github.com/mi3nts/mqttSubscribers). On IMD, the repository is located at `/mfs/io/groups/lary/gitHubRepos/mqttSubscribers/firmware`. To run the data readers, use the following commands:

    ```bash
    cd /mfs/io/groups/lary/gitHubRepos/mqttSubscribers/firmware
    nohup ./runDataReaders.sh > /dev/null 2>&1
    ```

## SharedairDFW Support
Data from MINTS nodes visible on [sharedairdfw.com](https://sharedairdfw.com) is stored in a PostgreSQL database. To import data into SharedairDFW, formatted .csv files are created from the two MQTT pipelines. Additionally, climate data is calibrated using a research-grade climate sensor via Machine Learning (ML). The calibrated data is also stored in the PostgreSQL database.

### MQTT Data from Directly Connected Nodes
Calibration and data formatting for climate data are achieved through firmware available at [GitHub - mi3nts/mqttLive](https://github.com/mi3nts/mqttLive). On IMD, the repository can be found at `/mfs/io/groups/lary/gitHubRepos/mqttLive/firmware`. To run the live update, use the following commands:

```bash
cd /mfs/io/groups/lary/gitHubRepos/mqttLive/firmware
nohup python3 l_1_liveUpdate.py >& logs/liveUpdate2023.log &





# CICD Support 

## IMD dependancies for MINTS 
Data from mints nodes are coming in via 3 different data pipelines. 
- RSYCED data from directly connected nodes
- MQTT data from directly connected nodes
- MQTT data from LoRaWAN Nodes



## RSYCED data from Directly connected nodes
The rsync scripts are ran directly on the nodes themselves automatically via a cronjob. And hence whenever IMD goes down and reboots it automatically syncs the data. As such nothing needs to be done on IMD incase of an unexpected reboot. Specific SSH keys are set up inorder to make the connection. 


## MQTT Data 
As a backup for the rsynced data, data from the 2 MQTT piplines are also saved. The firmware for the specified task can be found at https://github.com/mi3nts/mqttSubscribers. On IMD the repo can be found on the mfs mount @ /mfs/io/groups/lary/gitHubRepos/mqttSubscribers/firmware. 

```
cd /mfs/io/groups/lary/gitHubRepos/mqttSubscribers/firmware
nohup ./runDataReaders.sh > /dev/null 2>&1
```

## SharedairDFW Support 
The data from MINTS Nodes which are visible on sharedairdfw.com is stored on a postgreysql DB. In order for the data to be properly imported into SharedairDFW, formatted .csv files are created from the 2 MQTT pipelines. Although  not requered for Sharedairdfw, the collected climate data is calibrarted using a research grade climate sensor via ML. The calibrated data also ends up on the postgreq DB.

### MQTT Data from Directly connected nodes
The Calibration of the climate data as well as properly formatting the data is done through the firmare available at https://github.com/mi3nts/mqttLive. On IMD the repo can be found on the mfs mount @ /mfs/io/groups/lary/gitHubRepos/mqttLive/firmware
```
cd /mfs/io/groups/lary/gitHubRepos/mqttLive/firmware
nohup python3 l_1_liveUpdate.py >& logs/liveUpdate2023.log &
```

### MQTT Data from LoRaWAN Nodes
The Calibration of the climate data as well as properly formatting the data is done through the firmare available at https://github.com/mi3nts/loRaMqttLive. On IMD the repo can be found on the mfs mount @ /mfs/io/groups/lary/gitHubRepos/loRaMqttLive/firmware
```
cd /mfs/io/groups/lary/gitHubRepos/loRaMqttLive/firmware
nohup python3 l_1_loRaLiveUpdate.py >& logs/liveLoRaLiveUpdate2023.log &
```





