# Dragino Setup 
Dragino LoRa hubs are set up to be be installed on to the MINTS Central Hubs. A step by step process of configuring the Dragino LIG18 is given below. 

## Step 1: Loging into the web interface
- Power up the LIG18 via the usb C cable. 
- Using nmap or your router console figure out the ip address of the dragino device. 
- Type up the dragino IP address and its port to log into the dragino device.
   - Eg:    http://192.168.20.145:8000/
   - Eg:    http://192.168.20.145:80/ - For LPS8-V2  
   - Defualt PW dragino for root
   - May be helpful: http://wiki.dragino.com/xwiki/bin/view/Main/User%20Manual%20for%20All%20Gateway%20models/HP0C/

## Step 2: Updating the Dragino Firmware
- On the web interface, via the system tab and click on firmware upgrade button. 
- Upload the latest (or prefered) firmware file.
- After the checks are done click proceed
- Once Updated, the interface will come back on to its defaul page

## Step 3: Applying LoRa Settings
- Via the LoRA tab and click on LoRa button. 
- Change Keep Alive Period to 360 
- Change frequency plan to US915 United States 915Mhz (902-928)
- Change Sub Band to channel 8: US915, FBS8 (913.5~914.9)
- Click Save and Apply

## Step 4: Update LORAWAN Credentials
- Via the LoRAWAN tab and click on LoRaWAN -- Semtech UDP Button
- Record Email and Gateway ID 
- Update the Service provider to be 'Custom / Private LORAWAN'
- Update the Server Address to  be 'us8.bridge.lora.trecis.cloud'
- Click Save and Apply

## Step 4: Disable WiFi 
- Via the Network tab and click on WiFi button
- Untick the Enable Wi-Fi Access Point check box

## Step 5: Updating UN/PW for the device
- Via the System tab, click on remote General Button
- Update both root and admin passwords 


## Step 6: Add the current gateway to your network 
- Naviate to http://lora-large-1.trecis.cloud:18083/#/organizations/2/gateways
- Hit 'Create Gateway' and add the following details
   - Gateway Name: MINTS-GN02-2058d0-LIG16
   - Gateway Description: Dragino LIG16 Gateway
   - Add Gateway ID: a84041ffff2058d0
   - Add Gateway Server: utd.lora.network.us8
   - Add service profile: us8:8    
   - Hit Create Gateway


###  OPTIONAL: Step 6: Get Credentials for remote IT

- Via the System tab, click on remote IT Button
- Click Intall 
- Record the Install it code from the dialog Appeared
   - Eg: Installing remoteit (4.13.5) to root... --------------------- Claim this device --------------------- Use the code **ABCDEF1** to register this device to your account --------------------- Claim this device --------------------- Configuring remoteit. Installation complete
-  Click Refresh 




