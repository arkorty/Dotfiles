# Configuration for Zsh history management
#HISTFILE=$HOME/.zsh_history                 # Path to the history file
#HISTSIZE=10000                              # Maximum number of entries in history
#SAVEHIST=10000                              # Maximum number of entries to save in the history file

# Some git/GPG fix
export GPG_TTY=$(tty)

# Function to start and fork a process, redirecting stdout and stderr to /dev/null
fork() {
  nohup $@ > /dev/null 2>&1 &               # macOS alternative to setsid
}

# Enhanced ls aliases for improved listing experience
# Note: eza needs to be installed via Homebrew first
if command -v eza >/dev/null; then
  # ls: Enhanced ls alternative
  alias ls='eza'
  # ll: Human-readable list with detailed information
  alias ll='eza -lh'
  # la: Human-readable list with detailed information including hidden files
  alias la='eza -lah'
  # lt: Tree-style list with hierarchical representation
  alias lT='eza -TL'
  # lT: Tree-style list with hierarchical representation
  alias lt='eza -T'
  # l1: Single line list for compact display
  alias l1='eza -1'
fi

# cat: Enhanced 'cat' command using 'bat' for syntax highlighting
if command -v bat >/dev/null; then
  alias cat='bat -p'
fi

# fastfetch: Fast alternative to 'neofetch' with customized logo and information
if command -v fastfetch >/dev/null; then
  alias fastfetch='fastfetch --load-config examples/2 --logo-type builtin \
  --logo arch --logo-padding 2 --logo-padding-top 1'
fi

# ssh: Set TERM to xterm-256color and ssh
alias ssh='TERM=xterm-256color ssh'

# aria: Enhanced 'aria2c' command with default download path set to $HOME/Downloads
if command -v aria2c >/dev/null; then
  alias aria='aria2c -d $HOME/Downloads'
fi

# clone : Clone a GitHub repository using github-cli and fzf
if command -v gh >/dev/null && command -v fzf >/dev/null; then
  alias clone='gh repo clone $(gh repo ls | fzf | awk '\''{print $1}'\'')'
fi

# Add auto suggestions
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# Add syntax highlighting
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Add bun to PATH
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# Add rustup to PATH
export PATH="/opt/homebrew/opt/rustup/bin:$PATH"

# Start starship
eval "$(starship init zsh)"
