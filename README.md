## **Thebluedragon7 Arch Linux dot files**

### **Alacritty Configuration**

Copy `./alacritty/alacritty.yml` to `~/.config/alacritty/`

### **Starship Configuration**

Copy `./starship/starship.toml` to `~/.config/`

Add the following line at the end of `~/.zshrc`

```
eval "$(starship init zsh)"
```

### **Bun**

```
curl https://bun.sh/install | bash
```

### **NVM**

```
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.2/install.sh | bash
```

### **Oh My ZSH**

```
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

### **git config**

```
git config --global user.name "thebluedragon7"
git config --global user.email "71325159+Thebluedragon7@users.noreply.github.com"
git config --global init.defaultBranch master
```

### **Touchegg Config**

`~/.config/touchegg/touchegg.conf`

### **NeoVim**

copy `./neovim/` to
`~/.config/nvim/init.vim`

```
:PlugInstall
```

### **TMUX**

`./tmux/.tmux.conf` to `~/.tmux.conf`
