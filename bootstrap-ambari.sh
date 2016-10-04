#!/usr/bin/env bash

wget -O /etc/yum.repos.d/ambari.repo http://public-repo-1.hortonworks.com/ambari/centos6/2.x/updates/2.4.1.0/ambari.repo
yum install ambari-server -y

ambari-server setup -s
ambari-server start
