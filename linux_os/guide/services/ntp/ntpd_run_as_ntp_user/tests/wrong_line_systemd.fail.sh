#!/bin/bash

yum -y install ntp

echo 'ExecStart=/usr/sbin/ntpd -u root:root $OPTIONS' > /usr/lib/systemd/system/ntpd.service
rm -f /etc/sysconfig/ntpd
