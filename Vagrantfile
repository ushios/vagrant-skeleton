# -*- mode: ruby -*-
# vi: set ft=ruby :
require 'pathname'


##
# chef settings
#
$cookbooks_path = "cookbooks"
$roles_path = "roles"

##
# import box settings
#
require './src/boxes.rb'

##
# import personal setting
#
require './settings/current.rb'

##
# import vm settings
#
Dir::glob("./servers/*.rb").each do |f|
	require "#{f}"
end

Vagrant.configure("2") do |config|

	# template server
	config.vm.define(:template, &$template)
end
