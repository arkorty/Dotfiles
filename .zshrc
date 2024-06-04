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

# aria2c: Enhanced 'aria2c' command with default download path set to $HOME/Downloads
alias aria2c='aria2c -d $HOME/Downloads'

# loop: Loop videos infinitely in fullscreen mode using 'mpv'
alias loop='mpv --loop=inf --fullscreen'

# fastfetch: Fast alternative to 'neofetch' with customized logo and information
alias fastfetch='fastfetch --load-config examples/2 --logo-type builtin \
--logo arch --logo-padding 2 --logo-padding-top 1'

# rate-mirrors: Rate and prioritize mirrors for Arch Linux based on specific criteria
alias rate-mirrors='rate-mirrors --protocol https --entry-country india \
arch'

# update-mirrors: Update pacman mirrors by rating and selecting appropriate mirrors
alias update-mirrors='rate-mirrors | tee mirrorlist; printf "Sure you want \
to overwrite the mirrorlist? [y/N]: "; read ok; [ "$ok" = "y" ] && sudo mv \
mirrorlist /etc/pacman.d/mirrorlist || rm mirrorlist'

# vpnon: Connect to VPN using ProtonVPN with fastest server
alias vpn-on='sudo protonvpn connect --fastest'

# vpnoff: Disconnect from ProtonVPN
alias vpn-off='sudo protonvpn disconnect'

# orphandel: Remove orphaned packages using Paru package manager
alias purge-orphan='paru -Rsnu $(paru -Qdtq)'

# boot2win: Reboot system into Windows using systemd-boot
alias reboot-to-windows='systemctl reboot --boot-loader-entry=auto-windows'

# bmount: Mount block device using 'udisksctl'
alias bm='udisksctl mount -b'

# bumount: Unmount block device using 'udisksctl'
alias bu='udisksctl unmount -b'
