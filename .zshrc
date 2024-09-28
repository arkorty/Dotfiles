# Configuration for Zsh history management
HISTFILE=$HOME/.zsh_history                 # Path to the history file
HISTSIZE=10000                              # Maximum number of entries in history
SAVEHIST=10000                              # Maximum number of entries to save in the history file

# Function to start and fork a process, redirecting stdout and stderr to /dev/null
fork() {
  setsid --fork $@ > /dev/null 2>&1 &       # Start and fork process in background
}

# Enhanced ls aliases for improved listing experience

# ls: Enhanced ls alternative
alias ls='eza'

# ll: Human-readable list with detailed information
alias ll='eza -lh'

# la: Human-readable list with detailed information including hidden files
alias la='eza -lah'

# lt: Tree-style list with hierarchical representation
alias lt='eza -TL'

# lT: Tree-style list with hierarchical representation
alias lT='eza -T'

# l1: Single line list for compact display
alias l1='eza -1'

# lf: Shorter alias for running lfrun command
alias lf='lfrun'

# cat: Enhanced 'cat' command using 'bat' for syntax highlighting
alias cat='bat -p'

# loop: Loop videos infinitely in fullscreen mode using 'mpv'
alias loop='mpv --loop=inf --fullscreen'

# ff: Fast alternative to 'neofetch' with customized logo and information
alias ff='fastfetch --load-config examples/2 --logo-type builtin \
--logo arch --logo-padding 2 --logo-padding-top 1'

# um: Update pacman mirrors by rating and selecting appropriate mirrors
alias um='rate-mirrors --protocol https --entry-country india arch | tee mirrorlist; printf "Sure you want \
to overwrite the mirrorlist? [y/N]: "; read ok; [ "$ok" = "y" ] && sudo mv \
mirrorlist /etc/pacman.d/mirrorlist || rm mirrorlist'

# od: Remove orphaned packages using Paru package manager
alias od='paru -Rsnu $(paru -Qdtq)'

# xsh: Set TERM to xterm-256color and ssh
alias xsh='TERM=xterm-256color ssh'

alias p='paru'  # Shorter alias for 'paru' package manager
alias n='nvim'  # Shorter alias for 'nvim' text editor
alias g='git'   # Shorter alias for 'git' version control

# non-interactive aliases

# dl: Enhanced 'aria2c' command with default download path set to $HOME/Downloads
alias dl='aria2c -d $HOME/Downloads'

# vo: Connect to VPN using ProtonVPN with fastest server
alias vo='sudo protonvpn connect --fastest'

# vf: Disconnect from ProtonVPN
alias vf='sudo protonvpn disconnect'

# rw: Reboot system into Windows using systemd-boot
alias rw='systemctl reboot --boot-loader-entry=auto-windows'

# bm: Mount block device using 'udisksctl'
alias bm='udisksctl mount -b'

# bu: Unmount block device using 'udisksctl'
alias bu='udisksctl unmount -b'

# rr: Reinitialize river
alias rr='~/.config/river/init'

# sb: Set brightness using ddcutil
alias sb='ddcutil --brief --display 1 setvcp 10'

# ss: Put screen saver
alias ss='mpv --fullscreen --loop=inf $HOME/.loop'

# sleep: Suspend system using systemctl
alias sleep='systemctl suspend'
