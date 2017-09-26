# Vim Everywhere
bindkey -v
export EDITOR=nvim

export DOTFILES="$HOME/.dotfiles"
export JAVA_HOME="/Library/Java/Home"
export PATH="$JAVA_HOME/bin:$PATH"   # Homebrew JDK should preceede system JDK.
export PATH="$PATH:$HOME/anaconda3/bin"
export GOPATH="$HOME/Sources/go"
export PATH="$GOBIN:$PATH"
export PATH="$DOTFILES/bin:$PATH"
export RUST_SRC_PATH="$HOME/.multirust/toolchains/nightly-x86_64-apple-darwin/lib/rustlib/src/rust/src/"
export JSR308="$HOME/Sources/jsr308-granullar"
export PATH="$JSR308/jsr308-langtools/dist/bin:$PATH"
export PATH="/usr/local/opt/protobuf@2.5/bin:$PATH"

# Move History file into `.zsh/`
HISTFILE="$ZDOTDIR/zsh_history"

# Enabling `gpg-agent` to act as an `ssh-agent`:
if [ -f "${HOME}/.gpg-agent-info" ]; then
     . "${HOME}/.gpg-agent-info"
       export GPG_AGENT_INFO
       export SSH_AUTH_SOCK
       export SSH_AGENT_PID
fi
