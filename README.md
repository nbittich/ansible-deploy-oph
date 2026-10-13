# Maintain app-openproceshuis from your machine

1. Put your ssh key in `./ssh_keys/`, set your host in `inventory.ini` and the variables in `docker-compose.yml`.

| | |
| --- | --- |
| First deploy (packages, docker, app, https) | `./deploy.sh` |
| Release without specific steps | `./deploy.sh release -e release=v2.8.3` |
| Release with its own steps (`playbooks/releases/release-2.8.3.yml`) | `./deploy.sh releases/release-2.8.3` |
| Logs of a service | `./deploy.sh logs -e service=virtuoso -e tail=200` |

Certificates are stored in `<DEPLOY_PATH>/data/certs` and renewed by a weekly cron on the server.
