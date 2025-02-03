
# USB Physical Locations - 

## Finding port from physical location

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
