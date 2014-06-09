[Project Name]
====

Version 0.01

Release date: Show commit log.

Project state: beta

----

Get started!
------

#### Add precise64 and saucy64 boxes

    # 14.04
    $ vagrant box add precise64 https://oss-binaries.phusionpassenger.com/vagrant/boxes/latest/ubuntu-14.04-amd64-vbox.box
    $ vagrant box add precise64 https://oss-binaries.phusionpassenger.com/vagrant/boxes/latest/ubuntu-14.04-amd64-vmwarefusion.box
    
    # 12.04
    $ vagrant box add precise64 http://files.vagrantup.com/precise64.box # for virtualbox provider
    $ vagrant box add precise64 http://files.vagrantup.com/precise64_vmware.box # for vmware fusion provider


##### Other boxes

- http://www.vagrantbox.es/

#### Vagrant up 

    $ git clone --recursive ${this_repo} path/to/clone
    $ cd path/to/clone
    $ vagrant up [--provider=vmware_fusion]


Credits
------

Project description
------

This is vagrant-skelton project.

Dependencies
------

- Required
    - [VirtualBox](https://www.virtualbox.org/)
    - [Vagrant](http://www.vagrantup.com/)
- Recommended
    - [VMWare fusion](https://www.vmware.com/jp/products/fusion/)

Documentation
------

### Add a new server.

#### add server file.

    $ cp servers/template.rb servers/{$filename}.rb

#### Define vm.

    $ vi Vagrantfile

and add define line.

    Vagrant.configure("2") do |config|
        ...
	    
	    config.vm.define(:your_server_name, &${$filename})
	    
	    ...
    end
    
    


Additional Notes
------




