# Docker Lab
Create as many lightweight servers as needed for experimentation. For example, to use with Ansible.

## Dockerfile
The Dockerfile defines the image to use for each lab machine that the docker-compose sets up.
OpenSSH server is installed and started, and a user is created.

## docker-compose
The docker-compose sets up each server, giving it a private IP address and mapping a host port to
the container's port 22. Additionally a network is defined for all the servers.
