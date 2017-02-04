#!/bin/sh
if ! hash zsh >/dev/null 2>&1; then
  sudo apt-get install -y zsh zsh-doc
fi
TEST_CURRENT_SHELL=$(expr "$SHELL" : '.*/\(.*\)')
if [ "$TEST_CURRENT_SHELL" != "zsh" ]; then
  # If this platform provides a "chsh" command (not Cygwin), do it, man!
  if hash chsh >/dev/null 2>&1; then
    printf "Time to change your default shell to zsh!\n"
    chsh -s $(grep /zsh$ /etc/shells | tail -1)
  # Else, suggest the user do so manually.
  else
    printf "I can't change your shell automatically because this system does not have chsh.\n"
    printf "Please manually change your default shell to zsh!\n"
  fi
fi