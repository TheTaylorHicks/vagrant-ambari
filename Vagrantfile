# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  # All Vagrant configuration is done here. The most common configuration
  # Every Vagrant virtual environment requires a box to build off of.
  config.vm.box = "bento/centos-6.7"

  # Fixes changes from https://github.com/mitchellh/vagrant/pull/4707
  config.ssh.insert_key = false

  config.vm.provider :virtualbox do |vb|
    vb.customize ["modifyvm", :id, "--memory", 3072] # RAM allocated to each VM
  end

  config.vm.provision :shell, :path => "bootstrap.sh"

  config.vm.define :c6701 do |c6701|
    # uncomment the line below to set up the ambari dev environment
    # c6701.vm.provision :shell, :path => "dev-bootstrap.sh"
    c6701.vm.provision :shell, :path => "bootstrap-ambari.sh"
    c6701.vm.hostname = "c6701.ambari.apache.org"
    c6701.vm.network :private_network, ip: "192.168.67.101"
  end

  config.vm.define :c6702 do |c6702|
    c6702.vm.hostname = "c6702.ambari.apache.org"
    c6702.vm.network :private_network, ip: "192.168.67.102"
  end

  config.vm.define :c6703 do |c6703|
    c6703.vm.hostname = "c6703.ambari.apache.org"
    c6703.vm.network :private_network, ip: "192.168.67.103"
  end

  config.vm.define :c6704 do |c6704|
    c6704.vm.hostname = "c6704.ambari.apache.org"
    c6704.vm.network :private_network, ip: "192.168.67.104"
  end

  config.vm.define :c6705 do |c6705|
    c6705.vm.hostname = "c6705.ambari.apache.org"
    c6705.vm.network :private_network, ip: "192.168.67.105"
  end

  config.vm.define :c6706 do |c6706|
    c6706.vm.hostname = "c6706.ambari.apache.org"
    c6706.vm.network :private_network, ip: "192.168.67.106"
  end

  config.vm.define :c6707 do |c6707|
    c6707.vm.hostname = "c6707.ambari.apache.org"
    c6707.vm.network :private_network, ip: "192.168.67.107"
  end

  config.vm.define :c6708 do |c6708|
    c6708.vm.hostname = "c6708.ambari.apache.org"
    c6708.vm.network :private_network, ip: "192.168.67.108"
  end

  config.vm.define :c6709 do |c6709|
    c6709.vm.hostname = "c6709.ambari.apache.org"
    c6709.vm.network :private_network, ip: "192.168.67.109"
  end

  config.vm.define :c6710 do |c6710|
    c6710.vm.hostname = "c6710.ambari.apache.org"
    c6710.vm.network :private_network, ip: "192.168.67.110"
  end













  # Create a forwarded port mapping which allows access to a specific port
  # within the machine from a port on the host machine. In the example below,
  # accessing "localhost:8080" will access port 80 on the guest machine.
  # config.vm.network :forwarded_port, guest: 80, host: 8080

  # Create a private network, which allows host-only access to the machine
  # using a specific IP.
  # config.vm.network :private_network, ip: "192.168.33.10"

  # Create a public network, which generally matched to bridged network.
  # Bridged networks make the machine appear as another physical device on
  # your network.
  # config.vm.network :public_network

  # If true, then any SSH connections made will enable agent forwarding.
  # Default value: false
  # config.ssh.forward_agent = true

  # Share an additional folder to the guest VM. The first argument is
  # the path on the host to the actual folder. The second argument is
  # the path on the guest to mount the folder. And the optional third
  # argument is a set of non-required options.
  # config.vm.synced_folder "../data", "/vagrant_data"

  # Provider-specific configuration so you can fine-tune various
  # backing providers for Vagrant. These expose provider-specific options.
  # Example for VirtualBox:
  #
  # config.vm.provider :virtualbox do |vb|
  #   # Don't boot with headless mode
  #   vb.gui = true
  #
  #   # Use VBoxManage to customize the VM. For example to change memory:
  #   vb.customize ["modifyvm", :id, "--memory", "1024"]
  # end
  #
  # View the documentation for the provider you're using for more
  # information on available options.

  # Enable provisioning with Puppet stand alone.  Puppet manifests
  # are contained in a directory path relative to this Vagrantfile.
  # You will need to create the manifests directory and a manifest in
  # the file precise32.pp in the manifests_path directory.
  #
  # An example Puppet manifest to provision the message of the day:
  #
  # # group { "puppet":
  # #   ensure => "present",
  # # }
  # #
  # # File { owner => 0, group => 0, mode => 0644 }
  # #
  # # file { '/etc/motd':
  # #   content => "Welcome to your Vagrant-built virtual machine!
  # #               Managed by Puppet.\n"
  # # }
  #
  # config.vm.provision :puppet do |puppet|
  #   puppet.manifests_path = "manifests"
  #   puppet.manifest_file  = "init.pp"
  # end

  # Enable provisioning with chef solo, specifying a cookbooks path, roles
  # path, and data_bags path (all relative to this Vagrantfile), and adding
  # some recipes and/or roles.
  #
  # config.vm.provision :chef_solo do |chef|
  #   chef.cookbooks_path = "../my-recipes/cookbooks"
  #   chef.roles_path = "../my-recipes/roles"
  #   chef.data_bags_path = "../my-recipes/data_bags"
  #   chef.add_recipe "mysql"
  #   chef.add_role "web"
  #
  #   # You may also specify custom JSON attributes:
  #   chef.json = { :mysql_password => "foo" }
  # end

  # Enable provisioning with chef server, specifying the chef server URL,
  # and the path to the validation key (relative to this Vagrantfile).
  #
  # The Opscode Platform uses HTTPS. Substitute your organization for
  # ORGNAME in the URL and validation key.
  #
  # If you have your own Chef Server, use the appropriate URL, which may be
  # HTTP instead of HTTPS depending on your configuration. Also change the
  # validation key to validation.pem.
  #
  # config.vm.provision :chef_client do |chef|
  #   chef.chef_server_url = "https://api.opscode.com/organizations/ORGNAME"
  #   chef.validation_key_path = "ORGNAME-validator.pem"
  # end
  #
  # If you're using the Opscode platform, your validator client is
  # ORGNAME-validator, replacing ORGNAME with your organization name.
  #
  # If you have your own Chef Server, the default validation client name is
  # chef-validator, unless you changed the configuration.
  #
  #   chef.validation_client_name = "ORGNAME-validator"
end
