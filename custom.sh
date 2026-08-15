#!/bin/sh


sleep 8

# Permanent telnet
if [ ! -f /etc/config/rc.local ]; then
    mount -o remount,rw /etc/config
    printf '#!/bin/sh\ntelnetd -p 24 -l /bin/sh &\n' > /etc/config/rc.local
    chmod +x /etc/config/rc.local
fi

telnetd -p 24 -l /bin/sh &

#mount --bind "/tmp/sd/_ht_hw_settings.ini" /usr/local/_ht_hw_settings.ini || true
#mount --bind "/tmp/sd/_ht_hw_settings.ini" /etc/config/_ht_hw_settings.ini || true

#kill -TERM "$(pidof anyka_ipc)" || true










