HISTFILE=$HOME/.zsh_history                                                 # histfile location
HISTSIZE=10000                                                              # number of lines saved
SAVEHIST=10000                                                              # number of lines saved to histfile

alias ls='eza'                                                              # alias for exa
alias ll='eza -lh'                                                          # another alias for exa
alias la='eza -lah'                                                         # another alias for exa
alias lt='eza -T'                                                           # another another alias for exa
alias l1='eza -1'                                                           # another alias for exa
alias lf='lfrun'                                                            # alias for lfrun script
alias cat='bat -p'                                                          # alias for bat
alias hx='helix'                                                            # alias for helix
alias hex='hexyl'                                                           # alias for hexyl
alias aria2c='aria2c -d $HOME/Downloads'                                    # alias for aria2c with download path
alias loop='mpv --loop=inf --fullscreen'                                    # alias for mpv to loop
alias webt='setsid -f webtorrent download --mpv'                            # alias for webtorrent
alias dot='git --git-dir=$HOME/.dotfiles --work-tree=$HOME'                 # alias for git to manage dotfiles in a bare repo
alias skinstall='rm -f config.h patches.h && sudo make clean install'       # alias for suckless make install command
alias fastfetch='fastfetch --load-config examples/2 --logo-type builtin \
--logo linux --logo-padding 2 --logo-padding-top 1'                         # alias for fastfetch
alias rate-mirrors='rate-mirrors --protocol https --entry-country india \
arch | tee mirrorlist'                                                      # rate-mirrors alias
