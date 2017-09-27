# zvagrant
Petite installation perso d'un Vagrant simplifié pour se faire quatre (ou plus) machines virtuelles Linux en mode Desktop

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

<br>Après il suffit juste de copier le fichier *Vagrantfile* dans un dossier vide sur sa machine perso

On peut aussi si on a GIT d'installé sur sa machine faire un:

```
git clone https://github.com/zuzu59/zvagrant.git
```


# Utilisation

Pour créer ou allumer: vagrant up zf-DSK64-30221, ou vagrant up zf-DSK64-30221 zf-SRV64-32221, ou vagrant up, démarre toutes les machines !<br>
Pour se connecter en ssh: vagrant ssh<br>
Pour suspendre: vagrant suspend<br>
pour réveiller: vagrant resume<br>
pour détruire: vagrant destroy<br>
pour connaitre l'état: vagrant status

Avec comme:<br>
Login: **vagrant**<br>
Password: **vagrant**


# Redirection de ports

Les ports de la machine virtuelle sont redirigés sur la machine personnelle de la manière suivante:

    zf-DSK64-30221: 22 (guest) 	 => 30221<br>
    zf-DSK64-30221: 80 	(guest)  => 30801<br>
    zf-DSK64-30221: 8080 (guest) => 30881<br>
    zf-DSK64-30221: 443 (guest)  => 30441<br>
    zf-DSK64-30221: 5900 (guest) => 30591<br>
    zf-DSK64-30221: 3000 (guest) => 30301<br>
    zf-DSK64-30221: 3306 (guest) => 30331<br>


C'est à dire que si l'on veut utiliser le browser avec un serveur WEB qui tourne sur la machine virtuelle, il faut faire depuis sa machine personnelle:

http://adrs_ip_perso:30801

Où si on veut accéder à sa machine virtuelle depuis l'extérieur:

```
ssh vagrant@adrs_ip_perso -p 30221
```

# Partage du dossier Vagrant sur la machine virtuelle

Le dossier où se trouve le *Vagranfile* de la machine personnelle est partagé sur la machine virtuelle dans le dossier */vagrant* !

Attention, ce n'est valable uniquement si on a démarré ou réveillé la machine virtuelle avec la commande *vagrant* !


# Références

https://www.virtualbox.org/

https://www.vagrantup.com/
