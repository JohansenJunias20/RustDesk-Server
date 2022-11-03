#!/bin/bash
# please make sure docker installed from apt-get docker.io not from snapd
# installing so can start on boot linux
sudo cp rustdesk.service /etc/systemd/system/rustdesk.service
sed -i "s,__dir__,$PWD," /etc/systemd/system/rustdesk.service
chmod 777 start_startup.sh
systemctl enable rustdesk