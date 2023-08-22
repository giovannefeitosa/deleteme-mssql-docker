# This file should be sourced from other scripts, not executed directly.

function load_env_file() {
  local env_file=$1
  if [ -f "$env_file" ]; then
    echo "Loading environment variables from $env_file"
    set -a
    source "$env_file"
    set +a
  else
    echo "Environment file $env_file not found"
  fi
}
