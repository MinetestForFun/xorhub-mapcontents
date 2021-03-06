#!/bin/sh
#rsync -e "ssh -i /root/.ssh/id_dsa" -av --delete-after /home/quentinbd/minetest/worlds/minetestforfun/news.txt root@192.168.1.20:/var/www/wordpress/wp-content/uploads/news/

# Check the public key rights
chmod 600 /home/quentinbd/.ssh/id_rsa
chmod 600 /home/quentinbd/.ssh/id_rsa.pub

# Variable(s)
NB_LINES=1500

#######################
### Begin the RSYNC ###
#######################
# MFF CLASSIC #
###############
# On prend les $NB_LINES dernières lignes des logs et on y met dans "notready-moredebug-mff.txt"
tail -n $NB_LINES /home/quentinbd/scripts/moredebug-mff.txt > /home/quentinbd/scripts/notready-moredebug-mff.txt

# On ajoute une ligne au début
sed -i '1s/^/################################################\n/' /home/quentinbd/scripts/notready-moredebug-mff.txt
sed -i '1s/^/### MFF CLASSIC server - '$NB_LINES' last log lines ###\n/' /home/quentinbd/scripts/notready-moredebug-mff.txt
sed -i '1s/^/################################################\n/' /home/quentinbd/scripts/notready-moredebug-mff.txt

# On cache les adresses IPs
sed 's/[0-9][0-9]*\.[0-9][0-9]*\.[0-9][0-9]*\.[0-9]*/???.???.???.???/g' /home/quentinbd/scripts/notready-moredebug-mff.txt > /home/quentinbd/scripts/last-moredebug-mff.txt

# On envoi "last-moredebug-mff.txt" puis on le supprime
rsync -azrv --delete /home/quentinbd/scripts/last-moredebug-mff.txt quentinbd@192.168.1.20:/var/www/wordpress/wp-content/uploads/logs/
echo ">>> Transfert réussi de last-moredebug-mff.txt sur le wordpress <<<"
echo ""

# On supprime le fichier temporaire
rm /home/quentinbd/scripts/notready-moredebug-mff.txt
rm /home/quentinbd/scripts/last-moredebug-mff.txt

##########
# MFF HG #
##########
# On prend les $NB_LINES dernières lignes des logs et on y met dans "notready-moredebug-mff-hg.txt"
tail -n $NB_LINES /home/quentinbd/scripts/moredebug-mff-hg.txt > /home/quentinbd/scripts/notready-moredebug-mff-hg.txt

# On ajoute une ligne au début
sed -i '1s/^/###########################################\n/' /home/quentinbd/scripts/notready-moredebug-mff-hg.txt
sed -i '1s/^/### MFF HG server - '$NB_LINES' last log lines ###\n/' /home/quentinbd/scripts/notready-moredebug-mff-hg.txt
sed -i '1s/^/###########################################\n/' /home/quentinbd/scripts/notready-moredebug-mff-hg.txt

# On cache les adresses IPs
sed 's/[0-9][0-9]*\.[0-9][0-9]*\.[0-9][0-9]*\.[0-9]*/???.???.???.???/g' /home/quentinbd/scripts/notready-moredebug-mff-hg.txt > /home/quentinbd/scripts/last-moredebug-mff-hg.txt

# On envoi "last-moredebug-mff-hg.txt" puis on le supprime
rsync -azrv --delete /home/quentinbd/scripts/last-moredebug-mff-hg.txt quentinbd@192.168.1.20:/var/www/wordpress/wp-content/uploads/logs/
echo ">>> Transfert réussi de last-moredebug-mff-hg.txt sur le wordpress <<<"
echo ""

# On supprime le fichier temporaire
rm /home/quentinbd/scripts/notready-moredebug-mff-hg.txt
rm /home/quentinbd/scripts/last-moredebug-mff-hg.txt

################
# MFF SKYBLOCK #
################
# On prend les $NB_LINES dernières lignes des logs et on y met dans "notready-moredebug-mff-skyblock.txt"
tail -n $NB_LINES /home/quentinbd/scripts/moredebug-mff-skyblock.txt > /home/quentinbd/scripts/notready-moredebug-mff-skyblock.txt

# On ajoute une ligne au début
sed -i '1s/^/#################################################\n/' /home/quentinbd/scripts/notready-moredebug-mff-skyblock.txt
sed -i '1s/^/### MFF SKYBLOCK server - '$NB_LINES' last log lines ###\n/' /home/quentinbd/scripts/notready-moredebug-mff-skyblock.txt
sed -i '1s/^/#################################################\n/' /home/quentinbd/scripts/notready-moredebug-mff-skyblock.txt

# On cache les adresses IPs
sed 's/[0-9][0-9]*\.[0-9][0-9]*\.[0-9][0-9]*\.[0-9]*/???.???.???.???/g' /home/quentinbd/scripts/notready-moredebug-mff-skyblock.txt > /home/quentinbd/scripts/last-moredebug-mff-skyblock.txt

# On envoi "last-moredebug-mff-skyblock.txt" puis on le supprime
rsync -azrv --delete /home/quentinbd/scripts/last-moredebug-mff-skyblock.txt quentinbd@192.168.1.20:/var/www/wordpress/wp-content/uploads/logs/
echo ">>> Transfert réussi de last-moredebug-mff-skyblock.txt sur le wordpress <<<"
echo ""

# On supprime le fichier temporaire
rm /home/quentinbd/scripts/notready-moredebug-mff-skyblock.txt
rm /home/quentinbd/scripts/last-moredebug-mff-skyblock.txt

################
# MFF CREATIVE #
################
# On prend les $NB_LINES dernières lignes des logs et on y met dans "notready-moredebug-mff-creative.txt"
tail -n $NB_LINES /home/quentinbd/scripts/moredebug-mff-creative.txt > /home/quentinbd/scripts/notready-moredebug-mff-creative.txt

# On ajoute une ligne au début
sed -i '1s/^/#################################################\n/' /home/quentinbd/scripts/notready-moredebug-mff-creative.txt
sed -i '1s/^/### MFF CREATIVE server - '$NB_LINES' last log lines ###\n/' /home/quentinbd/scripts/notready-moredebug-mff-creative.txt
sed -i '1s/^/#################################################\n/' /home/quentinbd/scripts/notready-moredebug-mff-creative.txt

# On cache les adresses IPs
sed 's/[0-9][0-9]*\.[0-9][0-9]*\.[0-9][0-9]*\.[0-9]*/???.???.???.???/g' /home/quentinbd/scripts/notready-moredebug-mff-creative.txt > /home/quentinbd/scripts/last-moredebug-mff-creative.txt

# On envoi "last-moredebug-mff-creative.txt" puis on le supprime
rsync -azrv --delete /home/quentinbd/scripts/last-moredebug-mff-creative.txt quentinbd@192.168.1.20:/var/www/wordpress/wp-content/uploads/logs/
echo ">>> Transfert réussi de last-moredebug-mff-creative.txt sur le wordpress <<<"
echo ""

# On supprime le fichier temporaire
rm /home/quentinbd/scripts/notready-moredebug-mff-creative.txt
rm /home/quentinbd/scripts/last-moredebug-mff-creative.txt
