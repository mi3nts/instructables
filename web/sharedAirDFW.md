# SHAREDAIRDFW
The current documents gives a complete guide into managing the shared Air DFW web public web portal
Based OFF 
https://web.microsoftstream.com/video/a3fe9ee1-4f8d-4a2b-b896-70ac2ae9ca24
https://web.microsoftstream.com/video/0d674b14-bc80-42cb-9e12-24121cd17c18

## Instructions

### Step 1 

- Clone repo 
```
git clone git@github.com:mi3nts/sharedairdfw_map.git
sudo apt-get update
sudo apt install npm 
sudo apt install nodejs
```
make sure npm is upto date - apte-get might not get the latest. 

If thats the case, uninstall npm and nodejs.
```
cd sharedairdfw_map
sudo apt remove npm
sudo apt remove nodejs
```

Run npm install 
```
npm install 
```

### Step 2 : BACK END 
- Log into larytemp
```ssh netID@larytemp.circ.utdallas.edu```
Please contact the mints team for access. 

- Navigate into  mints-sensordata-to-postgres-backend
```/mfs/io/groups/lary/mints-sensordata-to-postgres-backend```

- Accessing the psql DB 
``` psql -U mints -h psql.scir.utdallas.edu - mints ```
Please contact the mints team for the db pw.

- Veiw sensors
While within the DB command line run the following.
``` SELECT sensors_id, sensors_name, FROM sensor_meta;```
to quit type ```\q```



- Rename Sensor 
``` curl localhost:3200/rename_sensors/SENSORID/NEWLABEL```
**Note %20 is space**

- Toggle Sensor 
``` curl localhost:3200/toggle_sensors/SENSORID```

 - Run historic update  
``` python3 updateHistorical.py```

- 
```
chown -R lhw150030:lary /mfs/io/groups/lary/mints-sensordata-to-postgres-backend/
```

```
./headlessStart.sh 
```

TO Stop 

```
node  
```
 
## QUESTION FOR GIAKHAN  
- HOW TO RUN THE DB LOCALLY AND TEST 
- HOW STOP THE INJECTION AND RUN A NEW ONE 

Local backend run 
- Setup Postgreysql DB 
 - version 11, install postgreysql https://www.digitalocean.com/community/tutorials/how-to-install-and-use-postgresql-on-ubuntu-18-04
 - git clone git@github.com:mi3nts/mints-sensordata-to-postgres-backend.git
 
 - within the sql folder on mints-sensordata ...
  - run contents of https://github.com/mi3nts/mints-sensordata-to-postgres-backend/blob/master/sql/dbsetuppub.sql on pssql command line 
  - remember pssql username and _PW_ 
  - git clone git@github.com:mi3nts/mints-noaa-api.git 
  - Copy and paste on to postgrescon.js
const PSQL_LOGIN = "postgres://mints:_PW_@LOCALHOST:PORT/mints"
const PSQL_WIND_LOGIN = "postgres://mints:_PW_@LOCALHOST:PORT/mints"
module.exports = {
        PSQL_LOGIN,
        PSQL_WIND_LOGIN
}

API: runs on port 3000 
- @ https://github.com/mi3nts/sharedairdfw_map/blob/master/src/services/sensor-data.js change the base URL to http://localhost:3000/
- run 
```node index.js ```

RENAME https://github.com/mi3nts/mints-sensordata-to-postgres-backend/blob/master/mconfig-template.js
RENAME https://github.com/mi3nts/mints-sensordata-to-postgres-backend/blob/master/postgrescon-template.js
GET RID OF \`-template\`


'<path to where the sensor data folders are>' = results folder nodeIDS should be presents 
 




