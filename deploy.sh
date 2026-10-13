# ./deploy.sh                                   first deploy (packages, docker, app, https)
# ./deploy.sh release -e release=v2.8.3         new release, generic
# ./deploy.sh releases/release-2.8.3            new release, with its specific steps
# ./deploy.sh logs -e service=virtuoso          logs of one service
set -xe
PLAYBOOK="${1:-master}"
[ $# -gt 0 ] && shift
docker compose up -d && docker compose exec ansible ansible-playbook -i /apps/inventory.ini "/playbooks/${PLAYBOOK}.yml" "$@"
