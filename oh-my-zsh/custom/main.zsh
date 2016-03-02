function logm {
  git log $(git merge-base master $(git pwb))..
}

function diffm {
  git diff $(git merge-base master $(git pwb))..
}

alias gs="git status"
# added by Anaconda 2.0.1 installer
export PATH="/Users/ivan/anaconda/bin:$PATH"
