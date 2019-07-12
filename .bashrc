#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias ll='ls -ahl --group-directories-first'
PS1='[\u@\h \W]\$ '

VBOX_USB=usbfs


alias log='vim /data/logs/log201906.txt'
alias peaclock="peaclock --config-dir ~/.config/peaclock"
alias sncli='sncli -c ~/.config/sncli/config'
alias todo='vim /data/todo.txt'
alias ydl="youtube-dl --add-metadata -i -o '%(title)s.%(ext)s'"
alias rtorrent="rtorrent -n -o import=~/.config/rtorrent/.rtorrent.rc"
alias dm='dmenu_run -fn "FiraCode-Regular: 18"'
alias notes='vim /data/txt/notes.txt'
alias wantlist='vim /data/txt/wantList.txt'
alias ass='vim /data/txt/assets.txt'

alias vim="nvim"
alias v="nvim"

alias gpuon='nvidia-settings -assign GPULogoBrightness=100'
alias gpuoff='nvidia-settings -assign GPULogoBrightness=0'

alias sd="sudo shutdown -h $1"
alias sdn="sudo shutdown -h now"
