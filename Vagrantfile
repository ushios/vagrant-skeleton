# -*- mode: ruby -*-
# vi: set ft=ruby :

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
require './servers/unit_test.rb'

Vagrant::Config.run do |config|

	# php-unit server
	config.vm.define(:unit_test, &$unit_test)
end
