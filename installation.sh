#!/bin/bash
sudo su -
yum update -y
cd /opt
wget https://dl.grafana.com/oss/release/grafana-9.2.1.linux-amd64.tar.gz
tar -xvzf grafana-9.2.1.linux-amd64.tar.gz
ln -s /opt/grafana-9.2.1 grafana
chmod -R 755 grafana
cd grafana/bin/
nohup ./grafana-server & 

