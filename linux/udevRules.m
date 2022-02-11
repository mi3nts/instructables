/etc/udev/rules.d/01-ttyusb.rules 
SUBSYSTEMS=="usb-serial", TAG+="uaccess"sudo usermod -a -G tty teamlary
udevadm control --reload
reboot
