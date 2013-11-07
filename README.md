vagrant-puppet-lamp
===================

Basic Vagrant setup with provisioning by Puppet

### Setup

Ubuntu Lucid x86 with LAMP

### Requirements
* [VirtualBox](https://www.virtualbox.org/wiki/Downloads)
* [Vagrant](http://downloads.vagrantup.com/tags/v1.0.3)

### Guide 
* Download and install required software
* Fork this repository
* Clone forked repository
* Run terminal and execute 'vagrant up'
* After provisioning, server should be ready to use. 
* To test Apache, visit [localhost:8080](http://localhost:8080) in a browser.
* Make a change to `./src/index.html`, save it and reload the test page. If you see your change, everything is working.

### Notes 
* The `./src` directory is set up as a shared folder and is the web server document root. This means that changes you make to files under `./src`, on your host computer are instantly viewable by reloading the page in your browser.
* The default mysql username and password are `root`.
* Mysql server is remotely accessible via port 8889
* To SSH into the Lucid box, try this command from terminal:

```bash
$ ssh -l vagrant -p 2222 localhost
```
* When prompted, enter the password `vagrant`
