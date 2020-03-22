# Time Set 
derived using this [link](https://www.tecmint.com/set-time-timezone-and-synchronize-time-using-timedatectl-command/)

# Veiw Time Zone Details
```timedatectl  status```

# Set Time Zone to UTC Time 
```timedatectl set-timezone UTC```

# Set Local (Real Time Clock) to UTC 
timedatectl set-local-rtc 0

# Sync with remote NTP(Network Time Protocol) server 
```timedatectl set-ntp true```



