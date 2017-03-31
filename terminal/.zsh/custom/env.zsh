# Vim Everywhere
bindkey -v
export EDITOR=nvim

export DOTFILES="$HOME/.dotfiles"
export JAVA_HOME="/Library/Java/Home"
export PATH="$JAVA_HOME/bin:$PATH"   # Homebrew JDK should preceede system JDK.
export PATH="$PATH:$DOTFILES/bin"
export PATH="$PATH:$HOME/anaconda3/bin"

# Move History file into `.zsh/`
HISTFILE="$ZDOTDIR/zsh_history"

# Enabling `gpg-agent` to act as an `ssh-agent`:
if [ -f "${HOME}/.gpg-agent-info" ]; then
     . "${HOME}/.gpg-agent-info"
       export GPG_AGENT_INFO
       export SSH_AUTH_SOCK
       export SSH_AGENT_PID
fi

# Making the LogicBlox database tools available on the command line:
#export LOGICBLOX_HOME="${HOME}/Software/logicblox/home"
#source "${LOGICBLOX_HOME}/etc/profile.d/logicblox.sh"

# Configure golang development environment:
#export GOPATH=$HOME/go

# Add all Go executables to path:
#export PATH="$GOPATH/bin:$PATH"
