# Le Vagrantfile minimaliste pour avoir une machine virtualbox xUbuntu en mode graphique
# zf170926.1418
# Source: https://app.vagrantup.com/viruzzo/boxes/xubuntu-xenial64


$prov1 = <<SCRIPT
		echo I am provisioning...
		echo ---------------------change timezone...
		sh -c 'echo Europe/Zurich >/etc/timezone && dpkg-reconfigure -f noninteractive tzdata'
		
		echo ---------------------change keyboard...
		sed -i.bak 's/^XKBMODEL=.*/XKBMODEL="macintosh"/' /etc/default/keyboard
		sed -i.bak 's/^XKBLAYOUT=.*/XKBLAYOUT="ch"/' /etc/default/keyboard
		sed -i.bak 's/^XKBVARIANT=.*/XKBVARIANT="fr"/' /etc/default/keyboard
		sed -i.bak 's/^XKBOPTIONS=.*/XKBOPTIONS="lv3:alt_switch"/' /etc/default/keyboard
		setupcon --force

		echo ---------------------install utils
		apt-get -y install htop

		echo ---------------------finished...
		echo ---------------------ATTENTION, IL FAUT FAIRE UN 'vagrant reload' DE LA MACHINE POUR LA REDEMARRER !
#		echo -
SCRIPT





Vagrant.configure("2") do |config|
  config.vm.box = "viruzzo/xubuntu-xenial64"

  config.vm.provider "virtualbox" do |vb|
	 vb.gui = true
	 vb.memory = 1500
  end
  config.vm.network "forwarded_port", guest: 22,	host: 	"30022"
  config.vm.network "forwarded_port", guest: 80,	host: 	"30080"
  config.vm.network "forwarded_port", guest: 8080,	host: 	"30088"
  config.vm.network "forwarded_port", guest: 443,	host: 	"30443"
  config.vm.network "forwarded_port", guest: 5900, 	host: 	"30590"
  config.vm.network "forwarded_port", guest: 3000,	host: 	"30300"
  config.vm.network "forwarded_port", guest: 3306,	host: 	"30306"
  config.vm.provision "shell", inline: $prov1


end


