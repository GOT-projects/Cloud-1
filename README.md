# Cloud-1
Automated deployment of Inception on a remote server

## Context

Inception is a projet with a classic wordpress build with docker.

The docker image use for this project is :
- mariadb and wordpress, to have a wordpress.
- phpmyadmin, to check the wordpress db
- cloudflare, for certificate and the pipeline

So, for have a automated deployment we decide to use Ansible.

## How to run


We need to add all the environnements. (AWS keys ...).

```
make
```
