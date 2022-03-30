#!/bin/bash
echo "deb [ arch=amd64,arm64  ] http://repo.mongodb.org/apt/ubuntu focal/mongodb-org/4.4 multiverse" > /etc/apt/sources.list.d/mongodb-org-4.4.list
echo "deb http://repo.pritunl.com/stable/apt focal main" > /etc/apt/sources.list.d/pritunl.list
apt-key adv --keyserver hkp://keyserver.ubuntu.com --recv 20691eec35216c63caf66ce1656408e390cfb1f5
apt-key adv --keyserver hkp://keyserver.ubuntu.com --recv 1bb6fbb8d641bd9c6c0398d74d55437ec0508f5f
apt-get --assume-yes update
apt-get --assume-yes upgrade
apt-get --assume-yes install pritunl mongodb-org
systemctl start pritunl mongod
systemctl enable pritunl mongod
