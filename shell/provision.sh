!/usr/bin/env bash

if [ -e "/etc/vagrant-provisioned" ];
then
    echo "Vagrant provisioning already completed. Skipping..."
    exit 0
else
    echo "Starting Vagrant provisioning process..."
fi

# Change the hostname so we can easily identify what environment we're on:
echo "web" > /etc/hostname
# Update /etc/hosts to match new hostname to avoid "Unable to resolve hostname" issue:
echo "127.0.0.1 web" >> /etc/hosts
# Use hostname command so that the new hostname takes effect immediately without a restart:
hostname web

bash /vagrant/shell/core.sh

bash /vagrant/shell/node.sh

bash /vagrant/shell/mongo.sh

touch /etc/vagrant-provisioned
