#!/bin/zsh

set -euo pipefail

SCRIPT_NAME="${0:t}"

usage() {
  cat <<EOF
Usage:
  $SCRIPT_NAME
  $SCRIPT_NAME --help

Description:
  Prints a compact git repository status summary:
  - current branch
  - working tree cleanliness
  - latest commit
EOF
}

if [[ "${1:-}" == "-h" || "${1:-}" == "--help" ]]; then
  usage
  exit 0
fi

if (( $# != 0 )); then
  print -u2 -r -- "ERROR: Unexpected arguments."
  usage >&2
  exit 1
fi

branch="$(git branch --show-current)"

if [[ -n "$(git status --porcelain)" ]]; then
  tree_state="dirty"
else
  tree_state="clean"
fi

latest_commit="$(git log -1 --pretty=format:'%h %s')"

print -r -- "branch: $branch"
print -r -- "working_tree: $tree_state"
print -r -- "latest_commit: $latest_commit"
