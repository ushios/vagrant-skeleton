$unit_test = Proc.new{|conf|
	conf.vm.box = $boxes[:ubuntu]['name']
	conf.vm.box_url = $boxes[:ubuntu]['url']

	conf.vm.network :hostonly, "192.168.100.10"
	conf.vm.forward_port(80, 8080)
	
	# share folder
	conf.vm.share_folder(
		"target_app",
		"/mnt/target_app",
		$share_folders[:target_app],
		:owner => 'vagrant', :group => 'vagrant'
	) 
	conf.vm.share_folder(
		"test_app",
		"/mnt/test_app",
		$share_folders[:test_app],
		:owner => 'vagrant', :group => 'vagrant'
	) 
	
	conf.vm.provision :chef_solo do |chef|
		chef.cookbooks_path = $cookbooks_path
		chef.roles_path = $roles_path
		
		# add rolse (roles folder)		
		chef.add_role 'vim'
		
		# add recipes (cookbooks folder)
		chef.add_recipe 'vim'

		chef.json = {}
	end
}

