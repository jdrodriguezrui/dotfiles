alias tmux='tmux -2'
alias vim='nvim'

alias kubecontext="kubectl config current-context"
alias kubecontext-namespace="kubectl config set-context --current --namespace >/dev/null"
alias kubecontext-clear='kubectl config unset contexts.$(kubectl config current-context 2>/dev/null).namespace >/dev/null;kubectl config unset current-context >/dev/null'
alias kubecontexts="kubectl config get-contexts"
alias kubecontexts-use="kubectl config use-context >/dev/null"
export KUBE_EDITOR="nvim"
source <(kubectl completion bash)

alias clipboard='xclip -r -sel clip'

alias gs="git status"
alias unadd="restore --staged"
alias gtree="git log --all --graph --decorate"
alias gco="git checkout"
alias gupstream='git branch --set-upstream-to=origin/$(git branch --show-current) $(git branch --show-current)'
#export GIT_SSL_NO_VERIFY=false
