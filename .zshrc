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

# ls/eza
alias ls="eza -a --color=always"
alias ls1="eza -1a --color=always"
alias lsa="eza -al --color=always"
alias lsr="eza -al --git -s modified --color=always"



# aws
export AWS_PROFILE=mess-root

# google cloud
export GOOGLE_APPLICATION_CREDENTIALS=/Users/davidmessinger/dev/GoogleCloudKeys/githubarchive-326814-ab68dc4e885d.json

eval "$(starship init zsh)"

