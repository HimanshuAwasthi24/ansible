# Ansible
1. Why?=> To remove manual overhead
2. What?=> IT Automation tool and agent less tool and built on python and dependent on python

            ##############architecture#########
ANSIBLE_INSTALLED_SERVER(CONTROLL NODE) ==========>>>>>  WHERE_TASKS_ARE_PERFORMED(MANAGED NODE)
           
           
            #############Feature###############

1. Configuration management
2. Provisioning
3. Deployments
4. Network Automation


        ###############comparison##########

ansible     |  chef              |  puppet
__________________________________________________
angentless  |  agent required    | agent required
___________________________________________________
yaml        |  new langauge      |  new laungauge 


Inventory=> List of hosts or managed nodes(example: inventory.ini or /etc/ansible/hosts)

plabooks=> List of instructions to be run on managed nodes or tasks to be performed 

adhoc commnads=> When you have to run some simple or single task 

ansible roles=> Breaking down every task in a plabook in respective folders it is roles , It is done for 
modularity and readabilty.Can be shared across.

command:

 ```ansible-galaxy role init roleName```

ansible-galaxy=> a marketplace for ansible roles where we can use predefined roles and deploy our roles

idenpotent=> If the file or folder already exists it will not fail it will just track the file is there so it will
not create a file 

publish roles=> Create a github repo of the role , Create api token from collections
``` ansible-galaxy import github-user name-of-repo --token <token> ```

# ansible vault
1. Create Vault password 
```openssl rand -base64 2048 > vault.pass```

2. Create vault
```ansible-vault create group_vars/all/pass.yaml --vault-password-file vault.pass```