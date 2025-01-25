# Walid's dotfiles

These are my dotfiles.

It mainly targets macOS systems

---
## Installation

On a sparkling fresh installation of macOS:

```bash
sudo softwareupdate -i -a
xcode-select --install
```

The Xcode Command Line Tools includes `git` and `make` (not available on stock macOS).

clone manually into the desired location:

---

## Git Clone repo

```bash
git clone https://github.com/Wa1idMahmoud/dotmacos
```
---
## Post-Installation

Set your Git credentials:

```sh
git config --global user.name "your name"
git config --global user.email "your@email.com"
git config --global github.user "your-github-username"
```
---

## Install Brewfile Instructions

Verify the installation:

``` bash
brew --version
```

Make sure you are in the right repository:

``` bash
cd dotmacos
```

Check Dependencies (Dry Run)
Before installing, verify if all dependencies are already installed:

``` bash
brew bundle check --file=Brewfile
```

Install Missing Dependencies

``` bash
brew bundle install --file=Brewfile
```

 Verify Installation

 ``` bash
brew bundle check --file=Brewfile
```

Remove all packages not listed in the local Brewfile:

```bash
brew bundle cleanup
```


---
## Install oh-my-zsh

Link: [ohmyz.sh](https://ohmyz.sh/)

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

Clone the repository in the /Documents Directory:

```bash
git clone https://github.com/Wa1idMahmoud/dotmacos.git
```
---
## Install .ZSHRC Aliases

Navigate into the cloned directory:

```bash
cd dotmacos
```

Copy the .zshrc file from the repository to your home directory:

```bash
cp .zshrc ~/.zshrc
```

Apply the changes from the .zshrc file:

```bash
source ~/.zshrc
```

Auto SYNCH Command:

```bash
update-zshrc
```
---
