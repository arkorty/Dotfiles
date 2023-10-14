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
alias aria2c='aria2c -d $HOME/Downloads'                                    # alias for aria2c with download path
alias fastfetch='fastfetch --load-config examples/2 --logo-type builtin \
--logo linux --logo-padding 2 --logo-padding-top 1'                         # alias for fastfetch
alias sleep-off='xset s off -dpms'                                          # turn off display sleep
alias screen-off='xset dpms force off'                                      # turn off display
alias rate-mirrors='rate-mirrors --protocol https --entry-country india \
arch > mirrorlist'                                                          # rate-mirrors alias
alias hx='helix'                                                            # alias for helix
