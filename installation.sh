#!/bin/bash
sudo su -
yum update -y
cd /opt
wget https://dl.grafana.com/enterprise/release/grafana-enterprise-9.5.2.linux-amd64.tar.gz
tar -zxvf grafana-enterprise-9.5.2.linux-amd64.tar.gz
rm -rf grafana-enterprise-9.5.2.linux-amd64.tar.gz
ln -s /opt/grafana-9.5.2 grafana
chmod -R 755 grafana
cd grafana/bin/
nohup ./grafana-server & 

