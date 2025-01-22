#!/bin/bash
ln -s /home/trojan-go/trojan-go /usr/bin/trojan-go
chmod +x /usr/bin/trojan-go
ln -s /home/trojan-go/trojan-go.service /etc/systemd/system/trojan-go.service
systemctl daemon-reload
systemctl enable trojan-go.service
systemctl start trojan-go.service
firewall-cmd --add-port=443/tcp
firewall-cmd --add-port=443/tcp --permanent