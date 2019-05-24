In this tutorial, you will install StorageOS on a three node Docker cluster.

First let's install

`curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add` {{execute}}
`sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"`
`sudo apt-get update`

`ssh root@host02`{{execute T2}}
`ssh root@host03`{{execute T3}}

The StorageOS CLI has already been installed and the environment variables have
been set:
`export STORAGEOS_USERNAME=storageos STORAGEOS_PASSWORD=storageos STORAGEOS_HOST=[[HOST_IP]]`{{execute T1}}
