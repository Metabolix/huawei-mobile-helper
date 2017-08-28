# Huawei mobile helper

Some Huawei USB dongles (such as E3372s in Stick mode) need an AT^NDISDUP command to connect to the Internet. This helper sends the command automatically when the device is attached.

## Usage

1. Install this package (or manually install the udev rules).
2. Reload udev rules: `sudo udevadm control -R`
3. Remove the Huawei USB dongle.
4. Insert the Huawei USB dongle.
5. Run `huawei-mobile-helper --info` to see if you're good to go.
   The script also reports the correct network interface to use.
6. Set your APN settings in `/etc/huawei-mobile-helper.conf`, or simply try the defaults.
7. Enable the systemd service:
   `systemctl enable --now huawei-mobile-helper.service`.
8. Enable DHCP on the corresponding network interface:
   `systemctl enable --now dhcpcd@wwan0` or similar.

## Troubleshooting (simple)

* Reboot.
* Check your APN settings.
* Retry the instructions and see if there are any error messages.
* Run `huawei-mobile-helper --info`
* Run `huawei-mobile-helper --debug > huawei-debug.txt`, then show that `huawei-debug.txt` to someone and ask them for help.

## Troubleshooting (advanced)

* Read `dmesg -w` or `journalctl -f` while inserting and removing the dongle.
* `ip -br link`
* `lsusb; lsusb -t`
* `lsusb -v -d 12d1:`
* `find /dev/ttyUSB* -exec udevadm info -a '{}' ';'`

## License

This program is free software; you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation; either version 3 of the License, or (at your option) any later version. See the file LICENSE for the details.
