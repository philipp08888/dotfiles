#!/bin/zsh

# get the directory where this script is located
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

create_symlink() {
  local source=$1
  local target=$2

  if [ -L "$target" ]; then
    # symlink already exists, check if it points to the right location
    if [ "$(readlink "$target")" = "$source" ]; then
      echo "$target already points to correct $source"
      return 0
    else
      echo "$target points to wrong location, updating..."
      rm "$target"
    fi
  elif [ -e "$target" ]; then
    # regular file already exists, make backup to avoid possible data loss
    echo "$target exists as regular file, making backup"
    mv "$target" "$target.backup"
  fi

  ln -sf "$source" "$target"
  echo "created symlink: '$source' points to '$target'"
}

# create symlinks for git configuration files
create_symlink "$SCRIPT_DIR/git/.gitconfig" ~/.gitconfig
create_symlink "$SCRIPT_DIR/git/.gitignore_global" ~/.gitignore_global

# create symlink for shell configuration
create_symlink "$SCRIPT_DIR/shell/.zshrc" ~/.zshrc

echo "setup complete, happy coding!"