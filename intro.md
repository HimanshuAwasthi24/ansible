# Ansible

**Why?** To remove manual overhead
**What?** IT Automation tool and agent less tool and built on python and dependent on python

## architecture
ANSIBLE_INSTALLED_SERVER(CONTROLL NODE) ==========>>>>>  WHERE_TASKS_ARE_PERFORMED(MANAGED NODE)
           
## Feature
1. Configuration management
2. Provisioning
3. Deployments
4. Network Automation

## Comparison   
ansible     |  chef              |  puppet
__________________________________________________
angentless  |  agent required    | agent required
___________________________________________________
yaml        |  new langauge      |  new laungauge 


**Inventory:** List of hosts or managed nodes(example: inventory.ini or /etc/ansible/hosts)

**plabooks:** List of instructions to be run on managed nodes or tasks to be performed

## password less auth
**using pem file**
```bash
ssh-copy-id -f "-o IdentityFIle <path to key-pair or pem>" user@PublicIP
```

**adhoc commnads:** When you have to run some simple or single task 
[EXAMPLE]
```bash
#ping module
ansible -i inventory.ini -m ping all
ansible -i inventory.ini -m ping db
ansible -i inventory.ini -m ping ubuntu@public_ip

#shell module
ansible -i inventory.ini -m shell -a "sudo ls /etc" all

#Pick role from ansible-galaxy
ansible-galaxy role install roleNameFromGalaxyMarketplace
```

**ansible roles:** Breaking down every task in a plabook in respective folders it is roles , It is done for 
modularity and readabilty.Can be shared across.

[COMMAND]

```bash
ansible-galaxy role init roleName
```

**ansible-galaxy:** a marketplace for ansible roles where we can use predefined roles and deploy our roles

**idenpotent:** If the file or folder already exists it will not fail it will just track the file is there so it will
not create a file 

**publish roles:** Create a github repo of the role , Create api token from collections
[COMMAND]

```bash
ansible-galaxy import github-user name-of-repo --token <token>
```

# ansible vault
1. Create Vault password 
[COMMAND]

```bash
openssl rand -base64 2048 > vault.pass
```

2. Create vault
[COMMAND]

```bash
ansible-vault create group_vars/all/pass.yaml --vault-password-file vault.pass
```
