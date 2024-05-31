HISTFILE=$HOME/.zsh_history                                                  # histfile
HISTSIZE=10000                                                               # history size
SAVEHIST=10000                                                               # histfile size

# zsh function to start and fork a process
# stdout(-err) gets redirected to /dev/null
fork() {
  setsid --fork $@ > /dev/null 2>&1 &
}

alias ls='eza'                                                               # modern ls alternative
alias ll='eza -lh'                                                           # human readable list
alias la='eza -lah'                                                          # human readable list all
alias lt='eza -T'                                                            # tree style list
alias l1='eza -1'                                                            # single line list
alias lf='lfrun'                                                             # shorter alias for lfrun
alias cat='bat -p'                                                           # bat as cat
alias hx='helix'                                                             # modern text editor
alias hex='hexyl'                                                            # binary pretty print
alias xcb='xclip -selection clipboard'                                       # copy to clipboard
alias aria2c='aria2c -d $HOME/Downloads'                                     # aria2c with download path
alias loop='mpv --loop=inf --fullscreen'                                     # loop videos via mpv
alias dot='git --git-dir=$HOME/.dotfiles --work-tree=$HOME'                  # version controlled dotfiles
alias skinstall='rm -f config.h patches.h && sudo make clean install'        # suckless make install command
alias fzf-open='systemd-run --user xdg-open $(fzf)'                          # xdg-open with fuzzy search
alias fastfetch='fastfetch --load-config examples/2 --logo-type builtin \
--logo arch --logo-padding 2 --logo-padding-top 1'                           # fast neofetch alternative
alias rate-mirrors='rate-mirrors --protocol https --entry-country india \
arch'                                                                        # rate-mirrors
alias update-mirrors='rate-mirrors | tee mirrorlist; printf "Sure you want \
to overwrite the mirrorlist? [y/N]: "; read ok; [ "$ok" = "y" ] && sudo mv \
mirrorlist /etc/pacman.d/mirrorlist || rm mirrorlist'                        # update pacman mirrors
alias vpn-connect='sudo protonvpn connect --fastest'                         # connect vpn
alias vpn-disconnect='sudo protonvpn disconnect'                             # disconnect vpn
alias rm-orphans='paru -Rsnu $(paru -Qdtq)'                                  # remove orphaned packages
alias reboot-to-windows='systemctl reboot --boot-loader-entry=auto-windows'  # reboot to Windows using systemd-boot
alias usmount='udisksctl mount -b'                                           # mount filesystem in userspace
alias uumount='udisksctl unmount -b'                                         # unmount filesystem in userspace
