function logb {
  git log $(git merge-base ${1} $(git pwb))..
}

function diffb {
  git diff $(git merge-base ${1} $(git pwb))..
}

function logm {
  logb master
}

function diffm {
  diffb master
}

function pushup {
  local local_branch=$(git pwb)
  local remote_branch=ivan-${local_branch}
  git push -u origin ${local_branch}:${remote_branch}
}

function openpr {
  pushup
  local remote_name=$(git remote get-url origin | sed 's/.*://' | sed 's/\/.*//')
  local branch_name=ivan-$(git pwb)
  local repo_name=$(basename `git rev-parse --show-toplevel`)
  local base_branch='master'
  if [ ${repo_name} == 'heap' ]; then
    base_branch='develop'
  fi
  local url="https://github.com/heap/${repo_name}/compare/${base_branch}...${remote_name}:${branch_name}?expand=1"
  open $url
}

function fetchup {
  git fetch upstream && git merge --ff-only upstream/ivan-$(git pwb)
}

alias gs="git status"
export ANDROID_HOME=/Users/ivan/Library/Android/sdk
# added by Anaconda 2.0.1 installer
export PATH="/Users/ivan/anaconda/bin:$PATH"

eval "$(jump shell)"
