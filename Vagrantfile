# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"
Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

        config.vm.provider "virtualbox" do |v|
                v.customize [
                        "modifyvm", :id,
                        "--memory", "1024",
                        "--cpus", "2",
                        "--groups", "/Vagrant"
                ]

        end

        config.vm.define :ubuntu_lamp_server do |ubuntu_lamp_config|

                ubuntu_lamp_config.vm.box = "ubuntu-server-12042-x64-vbox4210"
                ubuntu_lamp_config.vm.box_url = "http://puppet-vagrant-boxes.puppetlabs.com/ubuntu-server-12042-x64-vbox4210.box"

                ubuntu_lamp_config.vm.host_name = "ubuntu.lamp.server"
                ubuntu_lamp_config.vm.network :private_network, ip: "192.168.100.124"

                ubuntu_lamp_config.vm.provision :puppet do |puppet|
                        puppet.manifests_path = "puppet/manifests"
                        puppet.manifest_file  = "sdi03.pp"
                        puppet.module_path = "puppet/modules"
                        #puppet.options = "--verbose --debug"
                        #puppet.options = "--verbose"
                end

                ubuntu_lamp_config.vm.provision :shell, :path => "puppet/scripts/enable_remote_mysql_access.sh"
        end
end
