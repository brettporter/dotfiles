#!/bin/sh

if [ -f $HOME/.bashrc ]; then
  . $HOME/.bashrc
fi

if [ -d $HOME/google-cloud-sdk ]; then

# The next line updates PATH for the Google Cloud SDK.
source /Users/brett/google-cloud-sdk/path.bash.inc

# The next line enables bash completion for gcloud.
source /Users/brett/google-cloud-sdk/completion.bash.inc

fi
