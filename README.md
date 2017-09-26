# zvagrant
Petite installation perso d'un Vagrant simplifié pour se faire une machine virtuelle Linux en mode Desktop

Très pratique quand on veut vite avoir une machine Linux avec un interface graphique sur sa machine personnelle. Aussi pratique pour s'en refaire une autre en vitesse toute propre pour des tests de script d'installation.

La première installation prend 3 minutes environ et nécéssite une connexion à Internet (descente de la vagrant box), mais les suivantes en moins d'une minute cela tourne.

On utilise une version beaucoup plus *légère* d'Ubuntu, une **xUbuntu** !

# Installation

Il faut installer sur sa machine perso:

VirtualBox que l'on trouve ici:

https://www.virtualbox.org/wiki/Downloads

Les VirtualBox extensions pack qui se trouvent ici:

http://download.virtualbox.org/virtualbox/5.1.28/Oracle_VM_VirtualBox_Extension_Pack-5.1.28-117968.vbox-extpack

Vagrant qui se trouve ici:

https://www.vagrantup.com/downloads.html


Après il suffit juste de copier le fichier *Vagrantfile* dans un dossier vide sur sa machine perso

# Utilisation

Pour créer ou allumer: vagrant up<br>
Pour se connecter en ssh: vagrant ssh<br>
Pour suspendre: vagrant suspend<br>
pour réveiller: vagrant resume<br>
pour détruire: vagrant destroy<br>
pour connaitre l'état: vagrant status

Avec comme:<br>
Login: **vagrant**<br>
Password: **vagrant**

# Redirection de ports

Les ports de la machine virtuelle sont redirigés sur la machine de la manière suivante:

guest: 22,	host: 	"30022"<br>
guest: 80,	host: 	"30080"<br>
guest: 8080,	host: 	"30088"<br>
guest: 443,	host: 	"30443"<br>
guest: 5900, 	host: 	"30590"<br>
guest: 3000,	host: 	"30300"<br>
guest: 3306,	host: 	"30306"<br>

C'est à dire que si l'on veut utiliser le browser avec un serveur WEB qui tourne sur la machine virtuelle, il faut faire depuis sa machine personnelle:

http://adrs_ip_perso:30080

# Références

https://www.virtualbox.org/

https://www.vagrantup.com/
