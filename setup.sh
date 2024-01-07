# .devcontainer/setup.sh
#!/bin/bash

# Start k3d cluster with three nodes
k3d cluster create mycluster --servers 3
