ENV=$HOME/.shinit; export ENV

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
