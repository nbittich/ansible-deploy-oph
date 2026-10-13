# Deploy app-openproceshuis with Ansible

- One command from my machine
- No manual steps on the server
- Everything lives in the repo

## Create the server

- Create a new server on Hetzner
- Add my ssh key
- Copy the hostname
- Open `inventory.ini`
- Replace the host with the Hetzner reverse dns name

## First deploy

- Run `bash deploy.sh`

## What ansible is doing

- Install the required packages
- Install docker
- Generate ssl certificate
- Clones the repo
- Starts the app with docker compose

## Deploy a new release

- Goal is to maintain commands for the next release in a playbook rather than changelog 
- Release with no special steps: `./deploy.sh release -e release=v2.8.3`
- Release with its own steps (e.g restarting producer, migrations): `./deploy.sh releases/release-2.8.3`

## Maintain the server

- Look at the logs of a service: `./deploy.sh logs -e service=virtuoso -e tail=200`
- Restart a service with the restart playbook
- Every maintenance task can become a playbook