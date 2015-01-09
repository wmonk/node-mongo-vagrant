# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|

    # Setup box
    config.vm.box = "ubuntu/trusty64"

    # Configure private network for boxes
    config.vm.network "private_network", type: "dhcp"

    # This will share your app folder
    # with Vagrant over nfs. Change app to
    # the name of your own app.
    config.vm.synced_folder "../app", "/home/vagrant/app", type: "nfs"
    config.vm.provision "shell", path: "shell/provision.sh"

    # You can change web to your app
    # name to appear in VirtualBox
    config.vm.provider :virtualbox do |vb|
        vb.name = "Web"
    end

end
