# NvChad Custom Configuration

NvChad 自定义配置。

## 安装

### NeoVim

1. 下载 [NeoVim](https://github.com/neovim/neovim)

   ``` Bash
   curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
   chmod u+x nvim.appimage
   sudo mv nvim.appimage /usr/local/bin/nvim
   ```

2. 下载 [NvChad](https://github.com/NvChad/NvChad)

   ``` Bash
   git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1
   ```

3. 下载 [nvime](https://github.com/imkasen/nvime)

   ``` Bash
   cd && git clone git@github.com:imkasen/nvime.git
   cd ~/.config/ && rm -rf ./nvim/lua/custom/
   ln -s ~/nvime/custom ./nvim/lua/custom
   ```

4. 下载 Nerd Font 和 *[ripgrep](https://github.com/BurntSushi/ripgrep)

### Vim

1. 同上，下载 `nvime`

   ``` Bash
   cd && rm .vimrc
   ln -s nvime/.vimrc .vimrc
   ```

## 参考

* [NvChad](https://github.com/NvChad/NvChad)
* [siduck/dotfiles](https://github.com/siduck/dotfiles/tree/master/nvchad/custom)
