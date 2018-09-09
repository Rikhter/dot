

Vagrant.configure("2") do |config|
  config.vm.box = "centos/7"

  config.vm.synced_folder ".", "/vagrant", type: "nfs"

  config.vm.network "forwarded_port", guest: 2375, host: 2375
  config.vm.network "forwarded_port", guest: 80, host: 8080

  config.vm.provision "docker" do |d|
    d.build_image "/vagrant/. -t dot"
    d.run "express", image: "dot", args: "-p 80:80"
  end
end

