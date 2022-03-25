# WiFi  and Ethernet

## Connecting to Wifi Through the command line 
```sudo nmtui```

## See Wifi List 
``` nmcli d wifi list ```
<pre>nmcli d wifi list
*  SSID             MODE   CHAN  RATE       SIGNAL  BARS  SECURITY    
<font color="#4E9A06"> </font>  <font color="#4E9A06">teamLaryMobile</font>   <font color="#4E9A06">Infra</font>  <font color="#4E9A06">9</font>     <font color="#4E9A06">54 Mbit/s</font>  <font color="#4E9A06">100</font>     <font color="#4E9A06">▂▄▆█</font>  <font color="#4E9A06">WPA2</font>        
<font color="#4E9A06"> </font>  <font color="#4E9A06">--</font>               <font color="#4E9A06">Infra</font>  <font color="#4E9A06">11</font>    <font color="#4E9A06">54 Mbit/s</font>  <font color="#4E9A06">95</font>      <font color="#4E9A06">▂▄▆█</font>              
<font color="#4E9A06"> </font>  <font color="#4E9A06">UTDGuest</font>         <font color="#4E9A06">Infra</font>  <font color="#4E9A06">11</font>    <font color="#4E9A06">54 Mbit/s</font>  <font color="#4E9A06">85</font>      <font color="#4E9A06">▂▄▆█</font>              
<font color="#4E9A06"> </font>  <font color="#4E9A06">eduroam</font>          <font color="#4E9A06">Infra</font>  <font color="#4E9A06">11</font>    <font color="#4E9A06">54 Mbit/s</font>  <font color="#4E9A06">85</font>      <font color="#4E9A06">▂▄▆█</font>  <font color="#4E9A06">WPA2 802.1X</font> 
<font color="#4E9A06"> </font>  <font color="#4E9A06">CometNet_Legacy</font>  <font color="#4E9A06">Infra</font>  <font color="#4E9A06">11</font>    <font color="#4E9A06">54 Mbit/s</font>  <font color="#4E9A06">85</font>      <font color="#4E9A06">▂▄▆█</font>  <font color="#4E9A06">WPA2 802.1X</font> 
<font color="#C4A000"> </font>  <font color="#C4A000">--</font>               <font color="#C4A000">Infra</font>  <font color="#C4A000">9</font>     <font color="#C4A000">54 Mbit/s</font>  <font color="#C4A000">75</font>      <font color="#C4A000">▂▄▆_</font>  <font color="#C4A000">WPA2</font>        
<font color="#4E9A06">*</font>  <font color="#C4A000">AV</font>               <font color="#C4A000">Infra</font>  <font color="#C4A000">9</font>     <font color="#C4A000">54 Mbit/s</font>  <font color="#C4A000">63</font>      <font color="#C4A000">▂▄▆_</font>  <font color="#C4A000">WPA2</font>        
<font color="#C4A000"> </font>  <font color="#C4A000">eduroam</font>          <font color="#C4A000">Infra</font>  <font color="#C4A000">1</font>     <font color="#C4A000">54 Mbit/s</font>  <font color="#C4A000">62</font>      <font color="#C4A000">▂▄▆_</font>  <font color="#C4A000">WPA2 802.1X</font> 
<font color="#C4A000"> </font>  <font color="#C4A000">UTDGuest</font>         <font color="#C4A000">Infra</font>  <font color="#C4A000">6</font>     <font color="#C4A000">54 Mbit/s</font>  <font color="#C4A000">62</font>      <font color="#C4A000">▂▄▆_</font>              
<font color="#C4A000"> </font>  <font color="#C4A000">CometNet_Legacy</font>  <font color="#C4A000">Infra</font>  <font color="#C4A000">6</font>     <font color="#C4A000">54 Mbit/s</font>  <font color="#C4A000">62</font>      <font color="#C4A000">▂▄▆_</font>  <font color="#C4A000">WPA2 802.1X</font> 
<font color="#75507B"> </font>  <font color="#75507B">UTDGuest</font>         <font color="#75507B">Infra</font>  <font color="#75507B">1</font>     <font color="#75507B">54 Mbit/s</font>  <font color="#75507B">55</font>      <font color="#75507B">▂▄__</font>              
<font color="#75507B"> </font>  <font color="#75507B">CometNet_Legacy</font>  <font color="#75507B">Infra</font>  <font color="#75507B">1</font>     <font color="#75507B">54 Mbit/s</font>  <font color="#75507B">49</font>      <font color="#75507B">▂▄__</font>  <font color="#75507B">WPA2 802.1X</font> 
</pre>

https://learn.adafruit.com/adafruits-raspberry-pi-lesson-3-network-setup/setting-up-wifi-with-occidentalis

```
1) arp-scan

Installation is easy:

sudo apt-get update
sudo apt-get install arp-scan
It has a ton of options, which can be seen here:

sudo arp-scan --help
For basic enumeration, to scan my "local" net, is:

sudo arp-scan -l | sort
Which results in a very basic display which shows each device including IP address, MAC address and manufacturer of the interface. It also showed "dup" responses for some of the addresses.

2) nmap

sudo apt-get update
sudo apt-get install nmap
To run a Fast scan, which lists devices and shows open ports

nmap -F 192.168.8.1-254
```

## Wi-FI wia command line 
Just edit /etc/network/interfaces and write:
```
auto wlan0
iface wlan0 inet dhcp 
                wpa-ssid <ssid>
                wpa-psk  <password>
```
After that write and close file and use command:
```
dhclient wlan0
```
