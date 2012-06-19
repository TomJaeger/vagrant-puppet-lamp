# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant::Config.run do |config|
    config.vm.define :inventis do |inv_config|
        inv_config.vm.box = "inventis"
        inv_config.vm.box_url = "http://files.vagrantup.com/lucid32.box"
        inv_config.vm.customize ["modifyvm", :id, "--rtcuseutc", "on"]
        inv_config.ssh.max_tries = 10
        inv_config.vm.forward_port 80, 8080
        inv_config.vm.forward_port 3306, 3306

        inv_config.vm.provision :puppet do |puppet|
            puppet.manifests_path = "puppet/manifests"
            puppet.manifest_file  = "inventis.pp"
            puppet.module_path = "puppet/modules"
            #puppet.options = "--verbose --debug"
            puppet.options = "--verbose"
        end
    end
end
