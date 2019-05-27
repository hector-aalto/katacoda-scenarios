In this tutorial, you will install StorageOS on a three node Docker cluster.

First we need to add Docker’s official GPG key:

`curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add`{{execute}}

Use the following command to set up the stable repository and update the package index files from their sources:
`sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"`{{execute}}
`sudo apt-get update`{{execute}}

