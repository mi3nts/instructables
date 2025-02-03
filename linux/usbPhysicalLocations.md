
# USB Physical Locations

## Finding a Serial Port from a USB Device's Physical Location

This tutorial demonstrates how to identify the serial port associated with a USB device based on its physical location (bus and device IDs). This is useful when you need to know which serial port corresponds to a device connected to a specific USB port on your system.

### Prerequisites

Ensure you have Python installed and the `pyserial` library. Install it using:

```bash
pip install pyserial
```

### Step-by-Step Guide

#### Step 1: Understanding USB Physical Location

Each USB device is connected to a physical location represented like `1-1.1` or `2-1.2`. This path indicates the USB bus and port.

#### Step 2: Writing the Python Code

The following Python script identifies the serial port based on the USB location:

```python
import serial.tools.list_ports

def find_serial_port_by_location(target_location):
    """Finds the serial port associated with a given USB physical location.

    Args:
        target_location: The USB physical location string (e.g., '1-1.1').

    Returns:
        The serial port device name (e.g., '/dev/ttyUSB0') or None if not found.
    """
    ports = serial.tools.list_ports.comports()
    for port in ports:
        if hasattr(port, 'location') and port.location == target_location:
            print(f"Found matching port: {port.device}")
            print(f"Description: {port.description}")
            print(f"HWID: {port.hwid}")
            print(f"Serial Number: {port.serial_number}")
            return port.device

    print(f"No port found for location: {target_location}")
    return None

# Specify the target USB location
target_location = '1-1.1'  # Example: Replace with your target location
serial_port = find_serial_port_by_location(target_location)

if serial_port:
    print(f"Serial port for location {target_location}: {serial_port}")
    # Now you can use the 'serial_port' variable to open the port, e.g.:
    # import serial
    # ser = serial.Serial(serial_port, 115200) # Example baud rate
    # ... your serial communication code ...
else:
    print(f"No serial port found for location {target_location}")

```

#### Step 3: Explanation of the Code

*   `serial.tools.list_ports.comports()`: Returns a list of available serial ports. Each port is an object with attributes like `device`, `description`, `hwid`, `serial_number`, and `location`.
*   `port.location`: The physical location of the USB device (e.g., `1-1.1`).
*   `port.device`: The path to the serial device (e.g., `/dev/ttyUSB0` on Linux or `COM1` on Windows).

#### Step 4: Running the Script

1.  Save the script (e.g., `find_serial_port.py`).
2.  Run it from your terminal:

```bash
python find_serial_port.py
```

If the device at the specified location is connected, the output will be similar to:

```
Found matching port: /dev/ttyUSB0
Description: CP2102 USB to UART Bridge Controller - CP2102 USB to UART Bridge Controller
HWID: USB VID:PID=10C4:EA60 SER=0001 LOCATION=1-1.1
Serial Number: 0001
Serial port for location 1-1.1: /dev/ttyUSB0
```

If no matching port is found:

```
No port found for location: 1-1.1
No serial port found for location 1-1.1
```

#### Step 5: Modifying for Your Needs

*   **Change `target_location`:** Modify the `target_location` variable.
*   **Handling Multiple Devices:**  If multiple devices share a location or similar locations, refine the script using other attributes like `description`, `hwid`, or `serial_number`.  You could store the ports in a dictionary keyed by location, or filter by other criteria.
*   **Using the Found Port:** The example now shows how to use the returned `serial_port` to open a serial connection.  Remember to install the `pyserial` library if you intend to do so.

#### Step 6: Understanding the Output

The output provides:

*   `port.device`: The serial port (e.g., `/dev/ttyUSB0`).
*   `port.description`: Device description.
*   `port.hwid`: Hardware ID (vendor ID, product ID, serial number, location).
*   `port.serial_number`: Device serial number.

#### Step 7: Next Steps

Use the identified serial port to interact with the connected device programmatically.  The example code now includes a stub for opening the serial port.  You will likely need to configure the baud rate and other serial port settings.
