# .devcontainer/setup.sh
#!/bin/bash

# Start k3d cluster with three nodes
k3d cluster create Dragon --servers 2

# Adding Nodes to the cluster 

k3d node create Goku --cluster Dragon

k3d node create Beast --cluster Dragon


# Adding the config File
mkdir -p $HOME/.kube
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config

# Show the kubectl nodes 
kubectl get nodes 
