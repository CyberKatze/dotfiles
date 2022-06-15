# ⚙️  Dotfiles
My personal dotfiles in the linux system using **chezmoi** (dotfile manager). 
- [Why use chezmoi?](https://www.chezmoi.io/why-use-chezmoi/)
- [Chezmoi Quick Start](https://www.chezmoi.io/quick-start/)

## ⚡ Usage
### 1. Install Chezmoi
#### curl
```bash
sh -c "$(curl -fsLS chezmoi.io/get)"
```
#### wget
```bash
sh -c "$(wget -qO- chezmoi.io/get)"
```
#### PowerShell
```bash
(irm -useb https://chezmoi.io/get.ps1) | powershell -c -
```
#### Arch
```bash
pacman -S chezmoi
```
### 2. Get dotfiles
```bash
chezmoi init
```
- This will create a new git local reposityry in ~/.local/share/chezmoi where chezmoi will **store its source sate**
---
- Install your dotfiles on new machine with a single command
```bash
chezmoi init --apply https://github.com/username/dotfiles.git
```
### 3. Use chezmoi

#### Add
```bash
chezmoi add ~/.bashrc
```
- This will copy `~/.bashrc` to `~/.local/share/chezmoi/dot_bashrc`.

#### Edit
```bash
chezmoi edit ~/.bashrc
```
- This will open `~/.local/share/chezmoi/dot_bashrc` in your `$EDITOR`. Make some changes and save the file.
#### Diff
```bash
chezmoi diff
```
- see what changes chezmoi would make
#### Apply
```bash
chezmoi -v apply
```
- `-n` for dry run
#### Update
```bash
chezmoi update
```
- pull the changes from your repo and apply them in a singe command

