# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  # Every Vagrant virtual environment requires a box to build off of.
  config.vm.box = "ubuntu"

  # Create a forwarded port mapping which allows access to a specific port
  # within the machine from a port on the host machine. In the example below,
  # accessing "localhost:8080" will access port 80 on the guest machine.
  config.vm.network :forwarded_port, guest: 80, host: 3030


  # Use Proxy to speedup 
  config.vm.provision :shell, :inline => 'echo \'Acquire::http::proxy "http://10.0.0.31:3142";\' > /etc/apt/apt.conf.d/01proxy'
  
  # Before installation need to up-to-date
  config.vm.provision :shell, :inline => "aptitude update"
  
  #### shell provisioner START
  
  # Setup Server (Apache2, PHP5 and MySql)
  config.vm.provision :shell, :path => "shell/server.sh"
  
  # Setup other required stuff ( pear library, testing stuff like phpunit, sqlite3 etc)
  config.vm.provision :shell, :path => "shell/package.sh"
  
  # Setup CI system (jenkins)
  # config.vm.provision :shell, :path => "shell/jenkins.sh"
  
  
 
end
