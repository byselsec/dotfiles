#!/bin/sh

alias e=emacs
alias emnw='emacs -nw'

alias rm='rm -I'

alias ls='ls -F --color=auto --group-directories-first'
alias lf='ls -F --color=auto'
alias lx='ls -o | grep "^-..x"'
alias ll='ls -ll'
alias lt='ls -lt'
alias la='ls -A'
alias l='ls'
alias lh='ls -hl'
alias llh='lh'

alias less='less -ir'
alias le=less
[[ -f ~/.less_termcap ]] && . ~/.less_termcap

alias trans='trans en:ru'
alias t=trans

alias gdb='gdb -q'

alias ns='notify-send'

alias cls='clear'

alias vpn='protonvpn-cli'

alias ip='ip -c'

alias hst="history | cut -c 8- | sort -u | fzf | tr '\\n' ' '"
alias hstc="history | cut -c 8- | sort -u | fzf | tr '\\n' ' ' | xclip -sel c"
alias xc='xclip -se clip'

# work around unknown 'st-256color' terminal
alias ssh='TERM=xterm ssh'
alias sgpt=~/.local/share/pythonvirt/chatgpt/bin/sgpt

command -v systemctl &>/dev/null && alias sctl=systemctl
