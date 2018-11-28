# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.define "kubemaster" do |kubemaster|
    kubemaster.vm.hostname = "kubemaster"
    kubemaster.vm.box = "ubuntu/bionic64"
    kubemaster.vm.network "private_network", ip: "192.168.99.20"
    kubemaster.vm.provision "shell", path: "provision.sh"
    
    kubemaster.vm.provision "file", source: "./scripts", destination: "$HOME/scripts"
    kubemaster.vm.provider "virtualbox" do |vb|
      vb.memory = "3096"
      vb.cpus = 2
    end
    kubemaster.vm.network "public_network", ip: "192.168.31.200"
    
    
  end

#  config.vm.define "db" do |db|
#    db.vm.hostname = "db"
#    db.vm.box = "ubuntu/bionic64"
#    db.vm.network "private_network", ip: "192.168.99.30"
#    db.vm.provision "shell", path: "provision.sh"
#    db.vm.provider "virtualbox" do |vb|
#      vb.memory = "1024"
#      vb.cpus = 2
#    end
#  end

#  config.vm.network "private_network", ip: "192.168.99.10"
#  config.vm.network :forwarded_port, guest: 8001, host: 8001
#  config.vm.network :forwarded_port, guest: 8080, host: 8080
#  config.vm.network :forwarded_port, guest: 8443, host: 8443
#  config.vm.network :forwarded_port, guest: 8444, host: 8444

end