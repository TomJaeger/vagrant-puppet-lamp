vagrant-puppet-lamp
===================

Basic Vagrant setup with provision by Puppet
Setup: Ubuntu Lucid x86 with LAMP

Requirements:
- VirtualBox (https://www.virtualbox.org/wiki/Downloads)
- Vagrant (http://downloads.vagrantup.com/tags/v1.0.3)

Guide:
- Download and install required software
- Fork this repository
- Clone forked repository
- Run terminal and execute 'vagrant up'
- After provisioning, server should be ready to use (webserver: 8080, mysql: 8889)

Note: the src directory is linked to the webserver document root.
Note: default mysql user and password are root