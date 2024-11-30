#ping module
ansible -i inventory.ini -m ping all
ansible -i inventory.ini -m ping db
ansible -i inventory.ini -m ping ubuntu@192.168.200.16

#shell module
ansible -i inventory.ini -m shell -a "sudo ls /etc" all

ansible-galaxy role install roleNameFromGalaxyMarketplace