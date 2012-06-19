vagrant-puppet-lamp
===================

Basic Vagrant setup with provision by Puppet
Setup: Ubuntu Lucid x86 with LAMP

Requirements:
- VirtualBox (https://www.virtualbox.org/wiki/Downloads)
- Vagrant (http://downloads.vagrantup.com/tags/v1.0.3)

Guide:
1) Download and install required software
2) Fork this repository
3) Clone forked repository
4) Run terminal and execute 'vagrant up'
5) After provisioning, server should be ready to use (webserver: 8080, mysql: 8889)

Note: the src directory is linked to the webserver document root.
Note: default mysql user and password are root