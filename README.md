# Dotfiles Setup

These are the profile I use for my Mac setup which consists of .zshrc (ZSH profile), .tmux.conf (TMUX configuration), and nvim (kickstart.nvim)

> [!IMPORTANT]
> This is a Mac setup, the settings and configuration might differ from LINUX.

## Minimal ZSH Profile

This a minimal ZSH profile inspired by the Kali Linux terminal. Which has features such as:
1. Autosuggestion
2. Directory Selection
3. Personalized prompt showing username and hostname as well as directory (I made this on my Mac so I add the OS fitting icon)
4. Colorized folder as indicator differentiate between file and folder
5. Show current path (PWD) as well as shortening it if it's too deep

### Autosuggestion

For autosuggestion, you need to install a plugin:

> Download the plugin
```
git clone https://github.com/zsh-users/zsh-autosuggestions \
  ~/.zsh/zsh-autosuggestions
```

### Syntax Highlighting
```
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git \
  ~/.zsh/zsh-syntax-highlighting
```

![demo](./Screenshot%202026-06-06%20at%2021.37.22.png)

## TMUX configuration

After downloading the `.tmux.conf`, you can install the plugins with `Prefix (Ctrl+b) + I (Shift + i)` and just wait for the text that says "TMUX environment reloaded.". The plugins used are:
1. `tmux-resurrect` to save and restore a tmux server backup in case of you computer crashing and shutting down.
2. `tmux-continuum` automation for `tmux-resurrect`.

## 
