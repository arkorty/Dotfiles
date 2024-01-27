source /usr/share/zsh/scripts/key-bindings.zsh                                      # set key bindings
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh           # add syntax highlighting
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh   # add syntax highlighting

eval "$(dircolors -b ~/.dircolors)"                                                 # export LS_COLORS
zstyle ':completion:*' list-colors "${(@s.:.)LS_COLORS}"                            # LS_COLORS for zsh tab completion
autoload -Uz compinit
compinit

compdef _gnu_generic delta

[ -f ~/.config/lf/LF_ICONS ] && {                                                   # load lf file icons
	LF_ICONS="$(tr '\n' ':' <~/.config/lf/LF_ICONS)" \
		&& export LF_ICONS
}

eval "$(starship init zsh)"                                                         # starship prompt
