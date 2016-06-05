# -*- mode: ruby -*-
# vi: set ft=ruby :

$script = <<SCRIPT
echo I am provisioning...
date > /etc/vagrant_provisioned_at
SCRIPT


Vagrant.configure("2") do |config|
  ## Choose your base box
  config.vm.box = "ubuntu/trusty64"
  config.vm.host_name = "postgresql" 

  config.vm.network :forwarded_port, host: 15432, guest: 5432

  config.vm.provider :virtualbox do |vb|
     # Use VBoxManage to customize the VM. For example to change memory:
     vb.customize ["modifyvm", :id, "--memory", "2048", "--cpus", "2"]
  end

  # mkdir -p ./data/apt-cache/partial/
  if File.directory? File.expand_path "./data/apt-cache/partial/"
    config.vm.synced_folder "data/apt-cache", "/var/cache/apt/archives", :owner => "root", :group => "root"
  end

  config.vm.provision "shell", inline: $script

  config.vm.provision :shell, :path => "Vagrant-setup/bootstrap.sh"

end