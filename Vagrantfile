# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant::Config.run do |config|

  # Every Vagrant virtual environment requires a box to build off of.
  config.vm.box = "precise64"

  # The url from where the 'config.vm.box' box will be fetched if it
  # doesn't already exist on the user's system.
  config.vm.box_url = "http://files.vagrantup.com/precise64.box"

  # Boot with a GUI so you can see the screen. (Default is headless)
  # config.vm.boot_mode = :gui

  # Forward a port from the guest to the host, which allows for outside
  # computers to access the VM, whereas host only networking does not.
  config.vm.forward_port 80, 8080
  # Flask development
  config.vm.forward_port 5000, 5000
  # Expressjs development
  config.vm.forward_port 3000, 3000
  # Sinatra development
  config.vm.forward_port 4567, 4567

  # Forward agent when doing `vagrant ssh`
  config.ssh.forward_agent = true

  # Allow symlink creation in guest OS
  config.vm.customize ["setextradata", :id, "VBoxInternal2/SharedFoldersEnableSymlinksCreate/v-root", "1"]

  # allow outside access to the box via a private IP address
  config.vm.network :hostonly, "172.16.1.2"

  # Mount share through NFS
  config.vm.share_folder("v-root", "/vagrant", ".", :nfs => true)

  # Puppet bootstrap - update apt cache
  config.vm.provision :puppet do |puppet|
    puppet.manifests_path = "puppet/manifests"
    puppet.module_path = "puppet/modules"
    puppet.manifest_file  = "bootstrap/apt-update.pp"
  end

  # Puppet bootstrap - install augeas
  config.vm.provision :puppet do |puppet|
    puppet.manifests_path = "puppet/manifests"
    puppet.module_path = "puppet/modules"
    puppet.manifest_file  = "bootstrap/vagrant-puppet.pp"
  end

  # Enable provisioning with Puppet stand alone.  Puppet manifests
  # are contained in a directory path relative to this Vagrantfile.
  # You will need to create the manifests directory and a manifest in
  # the file base.pp in the manifests_path directory.
  config.vm.provision :puppet do |puppet|
    puppet.manifests_path = "puppet/manifests"
    puppet.module_path = "puppet/modules"
    puppet.manifest_file  = "site.pp"
  end

  # Application provision
  # config.vm.provision :shell, :inline => "cd /vagrant; exit 0"

end
