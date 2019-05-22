Now switch to the second node and install the init container again:

`docker run --name enable_lio                \
           --privileged                      \
           --rm                              \
           --cap-add=SYS_ADMIN               \
           --volume /lib/modules:/lib/module \
           --volume /sys:/sys:rshared        \
           storageos/init:0.1`{{execute T3}}

Now you can install the StorageOS node container on the host.

In the third host terminal:

`docker run -d                                           \
  --name=storageos                                       \
  --env=HOSTNAME=host03                                  \
  --env=ADVERTISE_IP=[[HOST3_IP]]                        \
  --env=JOIN=[[HOST_IP]]                                 \
  --net=host                                             \
  --pid=host                                             \
  --privileged                                           \
  --cap-add=SYS_ADMIN                                    \
  --device=/dev/fuse                                     \
  --volume=/var/lib/storageos:/var/lib/storageos:rshared \
  --volume=/run/docker/plugins:/run/docker/plugins       \
  --volume=/sys:/sys                                     \
  storageos/node:1.2.0 server`{{execute T3}}`

Wait until the container reports that it is healthy:

`docker ps`{{execute T3}}

You should now have three nodes in your cluster:

`storageos node ls`{{execute T3}}
