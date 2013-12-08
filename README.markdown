[Project Name]
====

Version 0.01

Release date: Show commit log.

Project state: beta

----

Get started!
------

#### Add precise64 and saucy64 boxes

    $ vagrant box add saucy64 http://cloud-images.ubuntu.com/vagrant/saucy/current/saucy-server-cloudimg-amd64-vagrant-disk1.box # for virtualbox provider
    $ vagrant box add saucy64 http://brennovich.s3.amazonaws.com/saucy64_vmware_fusion.box # for vmware fusion provider
    $ vagrant box add precise64 http://files.vagrantup.com/precise64.box # for virtualbox provider
    $ vagrant box add precise64 http://files.vagrantup.com/precise64_vmware.box # for vmware fusion provider


##### Other boxes

- http://www.vagrantbox.es/

#### Vagrant up 

    $ git clone --recursive ${this_repo} path/to/clone
    $ cd path/to/clone
    $ vagrant up [--provider=vmware_fusion]

----
# Credits

----
# Project description

----
# Dependencies

- [VirtualBox](https://www.virtualbox.org/) or [VMWare fusion](https://www.vmware.com/jp/products/fusion/)
- [Vagrant](http://www.vagrantup.com/)

----
# Documentation

----
# Additional Notes




