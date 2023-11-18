# Set Up RTC for Odroid C4 

Edit the boot config file 
`sudo nano /media/boot/config.ini`

On the file add the following 
```
; Device Tree Overlay
overlay_resize=16384
overlay_profile=
overlays="pcf8563"
```
With other interfaces active 
```
; Device Tree Overlay
overlay_resize=16384
overlay_profile=
overlays="spi0 i2c0 i2c1 uart0 pcf8563"
```

# Update system Time/Calendar from the Hardware RTC shield at boot time
Edit the `/etc/rc.local` file 

`sudo nano /etc/rc.local`

Add this line: `hwclock -s`
```
if [ -f /aafirstboot ]; then /aafirstboot start ; fi
 
hwclock -s
 
exit 0
```

Make sure to add the line before the exit clause.

After the prevuis two steps are done and then rebooting the following should be the result: 
```
root@odroid:~# ls -l /dev/rtc*
lrwxrwxrwx 1 root root      4 Apr  2  2020 /dev/rtc -> rtc0
crw------- 1 root root 251, 0 Apr  2  2020 /dev/rtc0
root@odroid:~# zcat /proc/config.gz | grep PCF8563
CONFIG_RTC_DRV_PCF8563=y
root@odroid:~# lsmod
.....
i2c_meson_master       20480  0
.....
root@odroid:~#
```

# Time Zone Set 

An RTC should be stup for this section. The instructions given below should be followed on all linux driven mints nodes:

- Veiw Time Zone Details:
```timedatectl  status```

- Set Time Zone to UTC Time: 
```timedatectl set-timezone UTC```

- Set Local (Real Time Clock) to UTC :
```timedatectl set-local-rtc 0```

- Sync with remote NTP(Network Time Protocol) server:
```timedatectl set-ntp true```

Afterwards `timedatectl  status` should give the following:
```
timedatectl  status
               Local time: Sat 2023-11-18 16:34:36 UTC
           Universal time: Sat 2023-11-18 16:34:36 UTC
                 RTC time: Sat 2023-11-18 16:34:36    
                Time zone: UTC (UTC, +0000)           
System clock synchronized: yes                        
              NTP service: active                     
          RTC in local TZ: no         

```
Derived using this [link](https://www.tecmint.com/set-time-timezone-and-synchronize-time-using-timedatectl-command/)
