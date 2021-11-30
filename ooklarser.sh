ln -s /lib/systemd/system/rc-local.service /etc/systemd/system/rc-local.service
sleep 4
 printf '%s\n' '#!/bin/bash' '/usr/bin/su - root -c "/etc/speedtest/OoklaServer --daemon"' 'exit 0' | tee -a /etc/rc.local

 sleep 4
 chmod +x /etc/rc.local
sleep 3

reboot