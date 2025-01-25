# Walid's dotfiles

These are my dotfiles.

It mainly targets macOS systems

## Installation

On a sparkling fresh installation of macOS:

```bash
sudo softwareupdate -i -a
xcode-select --install
```

The Xcode Command Line Tools includes `git` and `make` (not available on stock macOS).

clone manually into the desired location:

```bash
git clone https://github.com/Wa1idMahmoud/dotmacos
```

## Post-Installation

Set your Git credentials:

```sh
git config --global user.name "your name"
git config --global user.email "your@email.com"
git config --global github.user "your-github-username"
```

## Install oh-my-zsh

Link: [ohmyz.sh](https://ohmyz.sh/)

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

