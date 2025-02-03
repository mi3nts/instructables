# USB Physical Locations

## Finding port from physical location

In this tutorial, we will show you how to find the corresponding serial port for a USB device based on its physical location (bus and device IDs). This method is useful when you need to identify which serial port corresponds to a device connected to a particular USB port on your system.

### Step 1: Prerequisites

Before you begin, ensure that you have Python installed and the `pyserial` library is available. If you don't have `pyserial` installed, you can install it using the following command:

```bash
pip install pyserial
```

Step-by-Step Guide
Step 1: Understanding the USB Physical Location
Each USB device is connected to a physical location in your system, which is represented in a format like 1-1.1 or 2-1.2. This is a path that indicates the USB bus and port where the device is connected.

To match a specific USB device to its serial port based on its physical location, we will use Python and the serial.tools.list_ports module. This module allows us to list all the available serial ports on your system.

Step 2: Writing the Python Code
We will create a Python script that identifies the serial port based on the USB location.

```
import serial.tools.list_ports

def find_serial_port_by_location(target_location):
    # Get a list of all available serial ports
    ports = serial.tools.list_ports.comports()

    # Iterate through the ports and check if the location matches
    for port in ports:
        if hasattr(port, 'location') and port.location == target_location:
            print(f"Found matching port: {port.device}")
            print(f"Description: {port.description}")
            print(f"HWID: {port.hwid}")
            print(f"Serial Number: {port.serial_number}")
            return port.device

    print(f"No port found for location: {target_location}")
    return None

# Specify the location you want to search for
target_location = '1-1.1'
find_serial_port_by_location(target_location)

```

Step 3: Explanation of the Code
serial.tools.list_ports.comports(): This function returns a list of all available serial ports on the system. Each port is an object that contains various attributes, such as device, description, hwid, serial_number, and location.

port.location: This attribute represents the physical location of the USB device, like 1-1.1 or 2-2.2. We will compare this with the target_location to find the matching port.

port.device: This is the path to the serial device, such as /dev/ttyUSB0 on Linux or COM1 on Windows.

Step 4: Running the Script
Save the script to a file, for example, find_serial_port.py.

Run the script by executing the following command in your terminal or command prompt:

```python find_serial_port.py```

Step 4: Running the Script
Save the script to a file, for example, find_serial_port.py.

Run the script by executing the following command in your terminal or command prompt:

bash
Copy
Edit
python find_serial_port.py
If the device with the specified location (1-1.1) is connected, you will see output similar to this:

plaintext
Copy
Edit
Found matching port: /dev/ttyUSB0
Description: CP2102 USB to UART Bridge Controller - CP2102 USB to UART Bridge Controller
HWID: USB VID:PID=10C4:EA60 SER=0001 LOCATION=1-1.1
Serial Number: 0001
If no matching port is found, the script will display:

plaintext
Copy
Edit
No port found for location: 1-1.1

Step 5: Modifying the Script for Your Needs
Change the target_location: If you want to search for a different USB device location, change the target_location variable in the script to the physical location you are interested in, for example, 2-1.2.

Handling Multiple Devices: If you have multiple devices connected to the same location or similar locations, you can further refine the script to handle these cases based on other attributes like description, hwid, or serial_number.

Step 6: Understanding the Output
The output will provide detailed information about the device, including:

port.device: The serial port corresponding to the device (e.g., /dev/ttyUSB0).
port.description: A description of the device (e.g., "CP2102 USB to UART Bridge Controller").
port.hwid: The hardware ID, which includes vendor ID, product ID, and serial number (e.g., USB VID:PID=10C4:EA60 SER=0001 LOCATION=1-1.1).
port.serial_number: The unique serial number of the device (if available).
Step 7: Next Steps
Now that you know how to find the serial port based on the USB location, you can use this information to manage and interact with the connected devices programmatically. For instance, you can open a serial connection to the correct port for communication with the USB-to-serial device.

