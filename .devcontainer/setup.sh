# .devcontainer/setup.sh
#!/bin/bash

# Start k3d cluster with three nodes
k3d cluster create mycluster --servers 3


# Adding the config File
mkdir -p $HOME/.kube
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config
