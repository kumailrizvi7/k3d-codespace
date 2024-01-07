# .devcontainer/Dockerfile
FROM mcr.microsoft.com/vscode/devcontainers/base:buster

# Install necessary tools
RUN apt-get update \
    && export DEBIAN_FRONTEND=noninteractive \
    && apt-get -y install --no-install-recommends kubectl

# Install k3d
RUN curl -s https://raw.githubusercontent.com/rancher/k3d/main/install.sh | bash

# Expose ports if needed
# EXPOSE 8080

# Set up non-root user
ARG USERNAME=vscode
ARG USER_UID=1000
ARG USER_GID=$USER_UID

# Create the user
RUN groupadd --gid $USER_GID $USERNAME \
    && useradd --uid $USER_UID --gid $USER_GID -m $USERNAME

# Set the default user
USER $USERNAME
