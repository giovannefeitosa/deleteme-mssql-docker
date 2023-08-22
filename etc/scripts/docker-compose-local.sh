#!/bin/bash

# This script is used to run docker-compose locally.
#
# Usage examples:
#   bash etc/scripts/docker-compose-local.sh up --build --force-recreate
#   bash etc/scripts/docker-compose-local.sh down
#   bash etc/scripts/docker-compose-local.sh ps

function main() {
  local HERE=$(cd $(dirname "$0") && pwd -P)
  local PROJECT_ROOT=$(cd "$HERE/../../" && pwd -P)
  local ENV_FILE="$PROJECT_ROOT/.env"
  local COMPOSE_FILE="$PROJECT_ROOT/etc/docker/docker-compose.local.yml"

  source "$HERE/lib.sh"

  load_env_file "$ENV_FILE"
  docker-compose -f "$COMPOSE_FILE" $@
}

( main $@ )
