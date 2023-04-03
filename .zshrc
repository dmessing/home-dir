# Fig pre block. Keep at the top of this file.
[[ -f "$HOME/.fig/shell/zshrc.pre.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.pre.zsh"
# share history across multiple zsh sessions
setopt SHARE_HISTORY
# append to history
setopt APPEND_HISTORY
# adds commands as they are typed, not at shell exit
setopt INC_APPEND_HISTORY
# expire duplicates first
setopt HIST_EXPIRE_DUPS_FIRST
# do not store duplications
setopt HIST_IGNORE_DUPS
# remove commandwhen the first character on the line is a space
setopt HIST_IGNORE_SPACE
#ignore duplicates when searching
setopt HIST_FIND_NO_DUPS
# removes blank lines from history
setopt HIST_REDUCE_BLANKS

alias higr='history -2000 | grep '

umask 077

# Some more alias to avoid making mistakes:
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'

alias cl='clear'
alias grep="grep --color=auto"

#brew
alias brewu='brew upgrade && brew update'

# git
alias gitb="git branch" #list branches
alias gitco="git checkout"
alias gitd="git diff --patience --no-color" #diff
alias gitdc="git diff --cached" #diff original
alias gitdh="git diff HEAD"  #diff head
alias gitl="git log --oneline --decorate -20 --reverse" #just the last 20 logs
alias gitls="git log --stat --decorate -20 --reverse" #just the last 20 logs with stats
alias gitr="git checkout --" #revert
alias gits="git status -s" #short status
alias gits\?="git status -s | grep -v \?\?" #ignore unknowns
alias gitst="git status" #long status
alias gitus="git unstage" #unstage a change alias was set with 'git config --global alias.unstage "reset HEAD"'
alias gitfa="git fetch --all"
alias gitam="git commit -am" 
# ls/exa
alias ls="exa -aF --color=always"
alias ls1="exa -1aF --color=always"
alias lsa="exa -aFl --color=always"
alias lsr="exa -aFl --git -s modified --color=always"


export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"
alias python=/usr/local/bin/python3
alias pip=/usr/local/bin/pip3

# aws
export AWS_PROFILE=mess-root

# google cloud
export GOOGLE_APPLICATION_CREDENTIALS=/Users/davidmessinger/dev/GoogleCloudKeys/githubarchive-326814-ab68dc4e885d.json

eval "$(starship init zsh)"


# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/davidmessinger/dev/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/davidmessinger/dev/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/davidmessinger/dev/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/davidmessinger/dev/google-cloud-sdk/completion.zsh.inc'; fi

if [ -d "/opt/homebrew/opt/ruby/bin" ]; then
  export PATH=/opt/homebrew/opt/ruby/bin:$PATH
  export PATH=`gem environment gemdir`/bin:$PATH
fi

# Fig post block. Keep at the bottom of this file.
[[ -f "$HOME/.fig/shell/zshrc.post.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.post.zsh"
