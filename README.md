# dwtj's dotfiles

This repo is meant to be cloned as the `~/.dotfiles/` directory. The dot files
themselves can be conveniently symlinked to the home directory using the `stow`
command.

Here's an example:

```
$ cd $HOME
$ git clone git@github.com:dwtj/passman.git .dotfiles
$ cd .dotfiles
$ stow -R -t ~ git interpreters osx terminal tools vim
```

Note that the contents of the `bin/` directory are not meant to be stowed.
Instead, this directory is meant to hold some simple standalone scripts. Note
also that the ZSH configuration adds this `bin/` directory to the `$PATH`
(assuming that the root of this repo is `~/.dotfiles`).
