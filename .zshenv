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

export QT_QPA_PLATFORM=wayland
export XDG_CURRENT_DESKTOP=hyprland
export XDG_SESSION_DESKTOP=hyprland
export XDG_CURRENT_SESSION_TYPE=wayland
export GDK_BACKEND="wayland,x11"
export MOZ_ENABLE_WAYLAND=1

# This will run a ssh-agent process if there is not one already, and save the
# output thereof. If there is one running already, we retrieve the cached
# ssh-agent output and evaluate it which will set the necessary environment
# variables. The lifetime of the unlocked keys is set to 1 hour.

if ! pgrep -u "$USER" ssh-agent > /dev/null; then
    ssh-agent -t 1h > "$XDG_RUNTIME_DIR/ssh-agent.env"
fi
if [[ ! -f "$SSH_AUTH_SOCK" ]]; then
    source "$XDG_RUNTIME_DIR/ssh-agent.env" >/dev/null
fi

eval "$(starship init zsh)"                                                         # starship prompt
