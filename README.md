# SpaceVim Configuration with NeoVim

> 当前版本：2.0.0-dev
>
> SpaceVim 体验了两天，体验非常不好。最糟糕的点在于文档的混乱，官方网站的中文、英文文档很多地方都有矛盾，程序内查询的手册又有很多与网站文档相出入的地方。这样混乱的文档导致每次想要更改一个插件往往要耗费大量的时间去搜索解决各种问题，因为官方文档的操作不具备可行性。如此一来就距离所谓的开箱即用，不折腾相差甚远。
>
> 所以，**结论是建议直接去学习配置 NeoVim。**

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
   curl -sLf https://spacevim.org/cn/install.sh | bash -s -- --install neovim
   ```

### 安装依赖

* NeoVim/SpaceVim: `:checkhealth`
  * Install Node.js
    * `npm install -g neovim`
  * `pip3 install --user pynvim`
  * `sudo apt install lua5.3`
  * Clipboard: `sudo apt install xsel`
* C++
  * `sudo apt install clang clangd`
* Python
  * 语法检查
    * `pip3 install --user flake8 pylint`
  * 包管理
    * `pip3 install --user isort autoflake`
  * 格式化：`pip3 install --user yapf`
  * LSP：`npm install -g pyright`
* sh
  * `npm install -g bash-language-server`
* JavaScript, TypeScript
  * `npm install -g typescript-language-server eslint`
* Vim
  * `npm install -g vim-language-server`

### Vim

Vim 只设置快捷键和基本配置。

``` Bash
cd && rm .vimrc
ln -s ~/nvime/vimconfig/.vimrc .vimrc
```
