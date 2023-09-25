# sharedAirDFW

sharedairdfw.com relies on several GitHub repositories, each serving a specific purpose. Here are the repositories and their intended functions:

The data collected for the website from MINTS sensors are coming in from two distcint MQTT pipelines. The relevent repos gathering data from these pipelines are given below.  
1) For directly connected nodes: https://github.com/mi3nts/mqttLive, located @ /mfs/io/groups/lary/gitHubRepos/mqttLive
2) For LoRaWAN nodes: https://github.com/mi3nts/loRaMqttLive, located @ /mfs/io/groups/lary/gitHubRepos/loRaMqttLive
The firmware is located on MFS and is typically accessed by the MINTS team via IMD --> `ssh mints@mintsdata.utdallas.edu -p 2222`

https://cometmail-my.sharepoint.com/:v:/r/personal/rxp046000_utdallas_edu/Documents/Recordings/MINTS%20-%20AI%20improvement%20effort-20230427_080133-Meeting%20Recording.mp4?csf=1&web=1&e=SHLRoa&nav=eyJyZWZlcnJhbEluZm8iOnsicmVmZXJyYWxBcHAiOiJTdHJlYW1XZWJBcHAiLCJyZWZlcnJhbFZpZXciOiJTaGFyZURpYWxvZyIsInJlZmVycmFsQXBwUGxhdGZvcm0iOiJXZWIiLCJyZWZlcnJhbE1vZGUiOiJ2aWV3In19

The website itself runs on ssh mints@mintsdata.utdallas.edu -p 2222
 
