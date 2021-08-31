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
 
## QUESTION FOR GIAKHAN  
- HOW TO RUN THE DB LOCALLY AND TEST 
- HOW STOP THE INJECTION AND RUN A NEW ONE 
