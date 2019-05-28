## Running a Docker Container

A Container is a runnable instance of an image. The image contains everything required to launch the process without requiring any configuration file or dependencies in the host. 

You can find existing images at Docker Hub, https://hub.docker.com/ or by typping the command `docker search <image_name>`.

In this example we will run a container that contains **Whalesay** an adaption of the Linux cowsay game.

Let's look for Whalesay on the Docker Hub repository:
`docker search whalesay`{{execute}}

You can pull (download) the image locally:
`docker pull whalesay`{{execute}}

Since the image now is locally available you can run it by typping:
`docker run whalesay cowsay 'Hello world!'`{{execute}}

Note: if you forget to pull, docker run will also do that for you.

## Start HTTP Server
`docker run -p 80:80 -d katacoda/docker-http-server`{{execute}}

## Test
`curl localhost`{{execute}}

## Generated Web Link

https://[[HOST_SUBDOMAIN]]-80-[[KATACODA_HOST]].environments.katacoda.com

## Markdown 
<pre>https://[[HOST_SUBDOMAIN]]-80-[[KATACODA_HOST]].environments.katacoda.com</pre>

## Learn More
[Displaying Tabs](https://katacoda.com/scenario-examples/scenarios/dashboard-tabs) and [embedding iFrames](https://katacoda.com/scenario-examples/scenarios/dashboard-tabs-iframe)
