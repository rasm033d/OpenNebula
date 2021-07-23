#!/bin/bash
wget 'https://github.com/OpenNebula/minione/releases/latest/download/minione'
bash minione --password Asdf1234!
bash minione --frontend
mkdir /home/itadmin/.one
echo "oneadmin:Asdf1234!" > /home/itadmin/.one/one_auth
systemctl restart opennebula-sunstone.service
systemctl restart opennebula.service
