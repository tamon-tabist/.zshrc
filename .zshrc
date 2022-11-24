# nord for iterm
# https://penguin-note.tech/iterm2-install-nord/

# alias
# alias git
alias g='git'
alias gs='git status'
alias ga='git add'
alias gc='git commit'
alias gpush='git push'
alias gpull='git pull'
alias gb='git branch'

# alias flutter
alias f='flutter'
alias fgen='genhtml coverage/lcov.info -o coverage/html'

# alias docker compose
alias dcp='docker-compose'


# color
export CLICOLOR=1
export TERM=xterm-256color

# https://bottoms-programming.com/archives/termina-git-branch-name-zsh.html
# git info for prompt customize
autoload -Uz vcs_info
setopt prompt_subst
zstyle ':vcs_info:git:*' check-for-changes true
zstyle ':vcs_info:git:*' stagedstr "%F{magenta}!"
zstyle ':vcs_info:git:*' unstagedstr "%F{yellow}+"
zstyle ':vcs_info:*' formats "%F{cyan}%c%u[%b]%f"
zstyle ':vcs_info:*' actionformats '[%b|%a]'
precmd () { vcs_info }

# プロンプトカスタマイズ
PROMPT='
[%B%F{red}%n@%m%f%b:%F{green}%~%f]%F{cyan}$vcs_info_msg_0_%f
%F{yellow}$%f '

# https://qiita.com/kenta4327/items/8faaa83f6a5bf595a4bc
# 補完機能を有効にする
autoload -Uz compinit && compinit
# 小文字でも大文字ディレクトリ、ファイルを補完できるようにする
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
