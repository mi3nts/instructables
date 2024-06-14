Has to restart rg15 after a manual reboot 
---------


kill $(pgrep -f 'python3 rg15Reader.py')  
nohup python3 rg15Reader.py >/dev/null 2>&1 &
