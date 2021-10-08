# Dragino Setup 
Dragino LoRa hubs are set up to be be installed on to the MINTS Central Hubs. A step by step process of configuring the Dragino LIG18 is given below. 

## Step 1: Loging into the web interface
- Power up the LIG18 via the usb C cable. 
- Using nmap or your router console figure out the ip address of the dragino device. 
- Type up the dragino IP address and its port to log into the dragino device.
   - Eg:    http://192.168.20.145:8000/
   - 

## Step 2: Updating the Dragino Firmware
- On the web interface, via the system tab and click on firmware upgrade button. 
- Upload the latest (or prefered) firmware file.
- After the checks are done click proceed
- Once Updated, the interface will come back on to its defaul page

145: Done 
## Step 3: Applying LoRaWan Settings
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

##  Step 5: 

