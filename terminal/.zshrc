# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/Users/owl/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

#export PROMPT='%m:%~%# '
autoload -U colors && colors
export PROMPT="%{$fg[yellow]%}%n%{$reset_color%}@%{$fg[green]%}%m %{$fg[blue]%}%~ %{$reset_color%}%% "

alias vi="vim"
alias vimdiff="vim -d"
alias goyo="vim -c Goyo"

alias ls="ls -G"
alias rmpyc='rm -v `find . | grep "\.pyc\$"`'

export EDITOR=vim

# Add program invocation configurations:
export PATH="$PATH:$HOME/.bin"
export PATH="$PATH:/Applications/Racket/bin"
export PATH="$PATH:$HOME/Software/node_modules/.bin"

# Path Additions for Development:
export PYTHONPATH="$HOME/Development/Oppy/:$HOME/Software/pynacl/build/lib.macosx-10.10-intel-2.7"
#export PATH="$PATH:$HOME/Development/ccap/bin"
#export Libclang_LIBRARY="/usr/local/opt/llvm/lib/libclang.dylib"
#export Libclang_INCLUDE_DIR="/usr/local/opt/llvm/lib/clang/3.5.0/include"
#export LIBCLANG_ROOT="/usr/local/opt/llvm/"
#export LDFLAGS="-L/usr/local/opt/llvm/lib/clang-c"
#export CPPFLAGS="-I/usr/local/opt/llvm/include/clang-c"
export PANINIJ_HOME="$HOME/Software/PaniniJ"
export PATH="$PATH:$PANINIJ_HOME/bin"
export JAVA_HOME=$(/usr/libexec/java_home)

alias pm-cymail="passman show email/cymail"
alias netid="passman show email/cymail"
alias panc-gen-src="mkdir -p generated-src && panc -d generated-src -XD-printflat"

# In order to make rust tools work:
#for rust_prog in cargo rust-lldb rustc rustdoc 
#do
#	alias $rust_prog="DYLD_LIBRARY_PATH='/usr/local/lib' $rust_prog"
#done

#alias rustup.sh="curl -sS https://static.rust-lang.org/rustup.sh | sudo bash"

alias erlvi='rlwrap erl -oldshell'

alias git-log-graph="git log --graph --decorate --pretty=oneline --abbrev-commit"

export ICE_HOME="/Library/Developer/Ice-3.5.1"
export PATH="$PATH:$ICE_HOME/bin"


export FINDBUGS_HOME="$HOME/Software/findbugs/findbugs-3.0.1"
alias findbugs="$FINDBUGS_HOME/bin/findbugs"


export OPENMW_HOME="$HOME/Projects/openmw/build/OpenMW.app/Contents/MacOS"
alias openmw="$OPENMW_HOME/openmw"

export MORROWIND_HOME="$HOME/Software/steamapps/Morrowind"

alias vim="nvim"
alias vi="nvim"
alias view="nvim -R"
