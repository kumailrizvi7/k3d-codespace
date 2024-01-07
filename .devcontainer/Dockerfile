# See here for image contents: https://github.com/microsoft/vscode-dev-containers/tree/v0.238.1/containers/ubuntu/.devcontainer/base.Dockerfile

# [Choice] Ubuntu version (use ubuntu-22.04 or ubuntu-18.04 on local arm64/Apple Silicon): ubuntu-22.04, ubuntu-20.04, ubuntu-18.04
ARG VARIANT="jammy"
FROM mcr.microsoft.com/vscode/devcontainers/base:0-${VARIANT}

# Copy the setup script into the container
COPY .devcontainer/setup.sh /usr/local/bin/

# Make the setup script executable
RUN chmod +x /usr/local/bin/setup.sh

# Run the setup script during the image build
RUN /usr/local/bin/setup.sh

