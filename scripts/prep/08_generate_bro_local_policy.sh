#!/bin/bash

if [[ -f /usr/local/bro/share/bro/policy/protocols/conn/mac-logging.bro ]]; then
    sed -i 's=#@load policy/protocols/conn/mac-logging=@load policy/protocols/conn/mac-logging=' /home/pi/firewalla/etc/local.bro # uncomment mac-logging if file exists
fi

if [[ -f /usr/local/bro/share/bro/base/frameworks/communication/main.bro ]]; then
    sed -i 's/#redef Communication::listen_interface = 127.0.0.1;/redef Communication::listen_interface = 127.0.0.1;/' /home/pi/firewalla/etc/local.bro # uncomment Communication if file exists
fi