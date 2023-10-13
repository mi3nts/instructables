

# Continuous Integration and Continuous Deployment (CI/CD) Support


## IMD dependancies for MINTS 
Data from MINTS nodes is acquired through three distinct data pipelines: 
- RSYCED data from directly connected nodes
- MQTT data from directly connected nodes
- MQTT data from LoRaWAN nodes



### RSYCED data from directly connected nodes
The rsync scripts run automatically on the nodes via cronjobs, ensuring that in the event of an IMD system reboot, data synchronization is automatic. As a result, there is no need for any manual intervention on IMD's part after an unexpected reboot. We have established specific SSH keys to facilitate these connections.


### MQTT Data 

As an additional layer of data backup, we store data from the two MQTT pipelines. The firmware required for this task is available at [GitHub - mi3nts/mqttSubscribers](https://github.com/mi3nts/Subscribers). Within the IMD system, you can locate the repository on the mfs mount at /mfs/io/groups/lary/gitHubRepos/mqttSubscribers/firmware.

```
cd /mfs/io/groups/lary/gitHubRepos/mqttSubscribers/firmware
nohup ./runDataReaders.sh > /dev/null 2>&1
```

## SharedAirDFW Support 
The data produced by MINTS Nodes, accessible through [sharedairdfw.com](https://www.sharedairdfw.com/), is archived in a PostgreSQL database. To ensure seamless integration with SharedairDFW, we generate structured .csv files from the two MQTT pipelines. It's important to note that, while not mandatory for SharedairDFW, we employ machine learning-based calibration techniques, utilizing a research-grade climate sensor to enhance the quality of the collected climate data. This calibrated data is also stored in the PostgreSQL database. However, it's worth mentioning that the demand for machine learning-calibrated climate data is currently unnecessary, as sharedairdfw.com does not currently display climate data from MINTS nodes.

### MQTT data from directly connected nodes for sharedairdfw.com
The process of calibrating climate data, along with the steps of data cleansing and averaging, is managed by the firmware accessible on [GitHub - mi3nts/mqttLive](https://github.com/mi3nts/mqttLive). Within the IMD system, this repository is located on the mfs mount at /mfs/io/groups/lary/gitHubRepos/mqttLive/firmware.
```
cd /mfs/io/groups/lary/gitHubRepos/mqttLive/firmware
nohup python3 l_1_liveUpdate.py >& logs/liveUpdate2023.log &
```

### MQTT Data from LoRaWAN Nodes for sharedairdfw.com
The process of calibrating climate data, along with the steps of data cleansing and averaging, is managed by the firmware accessible on [GitHub - mi3nts/loRaMqttLive](https://github.com/mi3nts/loRaMqttLive). Within the IMD system, this repository is located on the mfs mount at /mfs/io/groups/lary/gitHubRepos/mqttLive/firmware.
```
cd /mfs/io/groups/lary/gitHubRepos/loRaMqttLive/firmware
nohup python3 l_1_loRaLiveUpdate.py >& logs/liveLoRaLiveUpdate2023.log &
```
**Please ensure that multiple instances of these codes are not executed simultaneously.**




