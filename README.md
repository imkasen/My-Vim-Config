# SpaceVim 配置

一些 SpaceVim 相关的配置（包括 NeoVim）。

## 安装

1. 安装 [NeoVim](https://github.com/neovim/neovim)

   ``` Bash
   curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
   chmod u+x nvim.appimage
   mv nvim.appimage /usr/local/bin/nvim
   ```

2. 安装 [nvime](https://github.com/imkasen/nvime)

   ``` Bash
   cd && git clone git@github.com:imkasen/nvime.git
   ln -s ~/nvime/.SpaceVim.d .SpaceVim.d
   ```

3. 安装 [SpaceVim](https://spacevim.org/cn/)

   ``` Bash
   curl -sLf https://spacevim.org/cn/install.sh | bash
   ```

4. 检查依赖

   ``` Bash
   sudo apt install xsel
   sudo apt install lua5.3
   pip3 install pynvim
   npm install -g neovim
   ```
