#!/usr/bin/env bash
stow .

if [ -d "HOME" ]; then
  for rc in $(ls HOME); do
    if [ ! -f ${HOME}/.${rc} ]; then
      echo "Linking ${PWD}/HOME/${rc} to ${HOME}/.${rc} ..."
      ln -s ${PWD}/HOME/${rc} ${HOME}/.${rc}
    fi
  done
fi
