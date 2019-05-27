In this tutorial, you will learn how to install docker on a Ubuntu machine and run your first containers.

First we need to add Docker’s official GPG key:

`curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add`{{execute}}

Use the following command to set up the stable repository and update the package index files from their sources:
`sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"`{{execute}}
`sudo apt-get update`{{execute}}

Now we can install docker from the official repository:

`sudo apt-get install docker-ce docker-ce-cli containerd.io`{{execute}}

You can try if docker was installed correctly by running:

`docker run hello-world`{{execute}}