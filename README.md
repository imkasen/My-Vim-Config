# SpaceVim Configuration with NeoVim

一些 SpaceVim 相关的配置。

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
   rm -rf ~/.SpaceVim.d
   ln -s ~/nvime/.SpaceVim.d .SpaceVim.d
   ```

3. 安装 [SpaceVim](https://spacevim.org/cn/)

   ``` Bash
   curl -sLf https://spacevim.org/cn/install.sh | bash
   ```

### 安装依赖

* NeoVim/SpaceVim: `:checkhealth`
  * Install Node.js
    * `npm install -g neovim`
  * `pip3 install pynvim`
  * `sudo apt install lua5.3`
  * Clipboard: `sudo apt install xsel`
* C++
  * `sudo apt install clang`
  * `sudo apt install clangd`
* Python
  * 语法检查：`pip3 install --user flake8`
  * 语法检查：`pip3 install --user pylint`
  * 包管理：`pip3 install --user isort`
  * 包管理：`pip3 install --user autoflake`
  * 格式化：`pip3 install --user yapf`
  * LSP：`npm install -g pyright`
