# dotfiles
My personal dotfiles and configuration files

## Requirements

- **Neovim** >= 0.9
- **Git** >= 2.30
- **Zsh** >= 5.8

## Setup

Clone the repository:
```bash
git clone git@github.com:philipp08888/dotfiles.git
cd dotfiles
```

Run the setup script:
```bash
bash setup.sh
```

This script will automatically create symlinks for all configuration files.

After setup, configure your personal git settings:
```bash
git config --global user.name "Your Name"
git config --global user.email "your.email@example.com"
git config --global user.signingKey /path/to/your/.ssh/id_ed25519.pub
```

> **Note:** Git is configured to automatically sign commits using SSH.