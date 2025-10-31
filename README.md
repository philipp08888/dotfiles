# dotfiles
My personal dotfiles and configuration files

## Setup

Clone the repository:
```bash
git clone git@github.com:philipp08888/dotfiles.git
```

Run the setup script:
```bash
bash setup.sh
```

This script will automatically create symlinks for all configuration files.

> **Note:** Git is configured to automatically sign commit using SSH. 
>           Everything is already configured, you only need to set the
>           `user.signingKey` pointing to your SSH signing key.
> 
> You can set it via:
> ```bash
> git config --global user.signingKey /path/to/your/.ssh/id_ed25519.pub
> ```