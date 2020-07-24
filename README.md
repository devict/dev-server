# devICT Project Server

Ansible playbooks for managing the configuration of the devICT project server!

## Requirements

- [Ansible](https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html) (tested on 2.9.3)
- `make`

## Setup

There are a few files that need to be put in place.

- `hosts`
- `files/jobs/env`
- `files/jobs/db.env`

You will also need ssh access to the host you're applying this to via ansible.

## Commands

#### `make setup`

Baseline configuration, run as `root`.

- Sets up users and groups for caddy and docker.
- Installs ssh keys.
- Installs make, docker, and docker-compose.
- Sets up systemd service for docker.

#### `make caddy`

Sets up the caddy frontend that proxies to the various services.

- Sets up necessary files and directories.
- Puts the [Caddyfile](./files/caddy/Caddyfile) in place.
- Put systemd service in place, ensure running.

#### `make jobs`

This is the setup for the running [devICT Jobs Board](https://github.com/devict/jobs.devict).

- Pulls the latest from github.
- Installs the `.env` and `.db.env` files
  - Expected to be stored in `files/jobs/`.
- Puts systemd service in place, restarts.