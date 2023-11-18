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


After rebooting the following should be the result 
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


Derived using this [link](https://www.tecmint.com/set-time-timezone-and-synchronize-time-using-timedatectl-command/)
