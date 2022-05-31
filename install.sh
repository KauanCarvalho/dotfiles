#! /usr/bin/env bash

set -eu pipefail

backup_existing_file () {
  source_file="$1"

  if [ -e "$source_file" ]; then
    mv "$source_file" "${source_file}_backup_$(date +%s%3N)"
  fi
}

ln_file_to_home_directory () {
  source_full_path="$HOME/dotfiles/$1"
  target_full_path=${2:-"$HOME/.$1"} # Default arg.

  backup_existing_file "$target_full_path"

  ln -s "$source_full_path" "$target_full_path"
}

install_nvim () {
  source_full_path="$HOME/dotfiles/nvim/*"
  target_full_path="$HOME/.config/nvim/"

  backup_existing_file "$HOME/.config/nvim"

  mkdir -p "$HOME/.config/nvim"

  ln -s "$HOME/dotfiles/nvim/"* "$HOME/.config/nvim/"
}

install_dotfiles () {
  dotfiles=( aliases )

  for dotfile in "${dotfiles[@]}";
  do
    ln_file_to_home_directory "$dotfile"
  done
}

main () {
  git clone https://github.com/KauanCarvalho/dotfiles.git "$HOME/dotfiles"

  install_dotfiles
  install_nvim

  echo "Finished installation"
}

main
