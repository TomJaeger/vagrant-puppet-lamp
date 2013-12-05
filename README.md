vagrant-puppet-lamp
===================

Basic Vagrant setup with provisioning by Puppet

### Vagrant Box Details

##### Ubuntu server 12.04-2 x64
* Apache/2.2.14 (Ubuntu)
* PHP Version 5.3.2-1ubuntu4.21
* MySQL Server version: 5.1.72-0ubuntu0.10.04.1 (Ubuntu)
* Phpmyadmin

### Requirements
* [VirtualBox](https://www.virtualbox.org/wiki/Downloads)
* [Vagrant](http://downloads.vagrantup.com/tags/v1.0.3)

### Guide
* Download and install required software
* Fork this repository
* Clone forked repository
* Run terminal and execute `vagrant up`
* After provisioning, server should be ready to use.
* To test Apache, visit [localhost:8080](http://localhost:8080) in a browser.
* Make a change to `./src/index.html`, save it and reload the test page. If you see your change, everything is working.
* When done working, issue a `vagrant halt`.

### Notes
* The `./src` directory is set up as a shared folder and is the web server document root. This means that changes you make to files under `./src`, on your host computer are instantly viewable by reloading the page in your browser.
* The default mysql username and password are `root`.
* Mysql server is remotely accessible via port 8889
* To SSH into the Lucid box, try this command from terminal:

```bash
$ ssh -l vagrant -p 2222 localhost
```
* When prompted, enter the password `vagrant`. The vagrant user has su privilege.
* Resist the urge to update any of the software on the VM manually. Updating software should be done via [Puppet](http://docs.puppetlabs.com/puppet/3/reference/).

### Troubleshooting

If you get this message when trying to start up vagrant-puppet-lamp:

> The guest machine entered an invalid state while waiting for it
> to boot. Valid states are 'starting, running'. The machine is in the
> 'poweroff' state. Please verify everything is configured
> properly and try again.

* See [jakeasmith.com/2013/10/vagrant-invalid-state-power-off](http://jakeasmith.com/2013/10/vagrant-invalid-state-power-off/)

### Resources

* [Vagrant](http://www.vagrantup.com)
* [Puppet Configuration](https://docs.puppetlabs.com/references/stable/configuration.html)
* [Puppet Forge](https://forge.puppetlabs.com)
* [Puppet Users Google Group](https://groups.google.com/forum/#!forum/puppet-users)
