Local Updates 

- Clone the following repo: git@github.com:mi3nts/AirQualityAnalysisWorkflows.git
- cd influxdb
- mv ../.env .env
- Change the .env with proper credentials
- From the configuration on Oct 22nd line 45 and 46 from docker-compose.yml needs to be removed 
```
 - DOCKER_INFLUXDB_URL=${DOCKER_INFLUXDB_URL:?err}
 - DOCKER_INFLUXDB_HOSTNAME=${DOCKER_INFLUXDB_HOSTNAME:?err} 
```
remove config.json file 
```
rm  ~/.docker/config.json
```


The instructable derived from https://cometmail-my.sharepoint.com/:v:/g/personal/lhw150030_utdallas_edu/EZo4fgwqnjBNpaLhVPl4OioBZGKhiE6v8Qe9YfD5hUH71g?e=YOi1P5&nav=eyJyZWZlcnJhbEluZm8iOnsicmVmZXJyYWxBcHAiOiJTdHJlYW1XZWJBcHAiLCJyZWZlcnJhbFZpZXciOiJTaGFyZURpYWxvZyIsInJlZmVycmFsQXBwUGxhdGZvcm0iOiJXZWIiLCJyZWZlcnJhbE1vZGUiOiJ2aWV3In19


MDash Updates 

- Log Into mdash 


