#! /usr/bin/env bash

set -eu pipefail

backup_existing_file () {
  source_file="$1"

  if [ -e "$source_file" ]; then
    mv "$source_file" "${source_file}_backup_$(date +%s%3N)"
  fi
}

install_nvim () {
  source_full_path="$HOME/dotfiles/nvim/*"
  target_full_path="$HOME/.config/nvim/"

  backup_existing_file "$HOME/.config/nvim"

  mkdir -p "$HOME/.config/nvim"

  ln -s "$HOME/dotfiles/nvim/"* "$HOME/.config/nvim/"
}

main () {
  git clone https://github.com/KauanCarvalho/dotfiles.git "$HOME/dotfiles"

  install_nvim

  echo "Finished installation"
}

main
