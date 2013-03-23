#!/bin/sh

if [ -f $HOME/.bashrc ]; then
  . $HOME/.bashrc
fi

[[ -s "/Users/brett/.rvm/scripts/rvm" ]] && source "/Users/brett/.rvm/scripts/rvm"  # This loads RVM into a shell session.
[[ -r $rvm_path/scripts/completion ]] && . $rvm_path/scripts/completion
