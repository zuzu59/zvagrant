# Le Vagrantfile minimaliste pour avoir quatre machines virtualbox xUbuntu en mode graphique
# zf171016.1826
# Source: https://app.vagrantup.com/viruzzo/boxes/xubuntu-xenial64


# Utilisation

# Pour connaitre l'état: vagrant status
# Pour créer ou allumer: vagrant up zf-DSK64-30221, ou vagrant up zf-DSK64-30221 zf-SRV64-32221, ou vagrant up, démarre toutes les machines !
# Pour se connecter en ssh: vagrant ssh
# Pour suspendre: vagrant suspend
# Pour réveiller: vagrant resume
# Pour détruire: vagrant destroy

# Avec comme:
# Login: vagrant
# Password: vagrant


$vm_name_infra			= "zf-"
$vm_box_desktopA 		= "viruzzo/xubuntu-xenial64"
$vm_name_desktopA 		= $vm_name_infra + "DSK64-"
$vm_gui_desktopA		= true
$num_instances_desktopA		= 4
$vm_memory_desktopA		= 1500
$ports_range_desktopA		= 30

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
		echo -
		echo ---------------------ATTENTION IMPORTANT, IL FAUT FAIRE UN 'vagrant reload' DE LA MACHINE POUR TERMINER L"'"INSTALLATION !
		echo -
SCRIPT


Vagrant.configure("2") do |config|
	(1..$num_instances_desktopA).each do |i|
		vm_name = $vm_name_desktopA + "#{$ports_range_desktopA}22#{i}"
		config.vm.define vm_name do |zconfig|
			zconfig.vm.box = $vm_box_desktopA
			zconfig.vm.provider "virtualbox" do |vb|
				 vb.gui = $vm_gui_desktopA
				 vb.memory = $vm_memory_desktopA
			end
			zconfig.vm.hostname = vm_name
			# zconfig.vm.network "public_network"
			# zconfig.vm.network "private_network", ip: "192.168.41.12"
			zconfig.vm.network "forwarded_port", guest: 22,		host: 	"#{$ports_range_desktopA}22#{i}"
			zconfig.vm.network "forwarded_port", guest: 80,		host: 	"#{$ports_range_desktopA}80#{i}"
			zconfig.vm.network "forwarded_port", guest: 8080,	host: 	"#{$ports_range_desktopA}88#{i}"
			zconfig.vm.network "forwarded_port", guest: 443,	host: 	"#{$ports_range_desktopA}44#{i}"
			zconfig.vm.network "forwarded_port", guest: 5900, 	host: 	"#{$ports_range_desktopA}59#{i}"
			zconfig.vm.network "forwarded_port", guest: 3000,	host: 	"#{$ports_range_desktopA}30#{i}"
			zconfig.vm.network "forwarded_port", guest: 3306,	host: 	"#{$ports_range_desktopA}33#{i}"
			zconfig.vm.provision "shell", inline: $prov1
		end
	end
end











