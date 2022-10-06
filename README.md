# Nvime

A Lua configuration of NeoVim.

## Installation

1. [NeoVim](https://github.com/neovim/neovim)

   ``` Bash
   curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
   chmod u+x nvim.appimage
   sudo mv nvim.appimage /usr/local/bin/nvim
   ```

2. [nvime](https://github.com/imkasen/nvime)

   ``` Bash
   cd && git clone https://github.com/imkasen/nvime.git --depth 1
   cd ~/.config/ && rm -rf ./nvim
   ln -s ~/nvime ./nvim
   ```

3. Dependence

   ``` Bash
   sudo apt install ripgrep
   sudo apt install fd-find
   sudo apt install unzip
   pip3 install pysocks
   ```

## Plugins

<details>
   <summary>Basics</summary>
      <ul>
         <li><a href="https://github.com/wbthomason/packer.nvim">packer.nvim</a></li>
         <li><a href="https://github.com/kyazdani42/nvim-web-devicons">nvim-web-devicons</a></li>
         <li><a href="https://github.com/nvim-lua/plenary.nvim">plenary.nvim</a></li>
      </ul>
</details>
<details>
   <summary>Extensions</summary>
      <ul>
         <li><a href="https://github.com/kyazdani42/nvim-tree.lua">nvim-tree.lua</a></li>
         <li><a href="https://github.com/akinsho/bufferline.nvim">bufferline.nvim</a></li>
         <li><a href="https://github.com/nvim-lualine/lualine.nvim">lualine.nvim</a></li>
            <ul>
               <li><a href="https://github.com/arkav/lualine-lsp-progress">lualine-lsp-progress</a></li>
            </ul>
         <li><a href="https://github.com/nvim-telescope/telescope.nvim">telescope.nvim</a></li>
         <li><a href="https://github.com/glepnir/dashboard-nvim">dashboard.nvim</a></li>
         <li><a href="https://github.com/ahmedkhalf/project.nvim">project.nvim</a></li>
         <li><a href="https://github.com/nvim-treesitter/nvim-treesitter">nvim-treesitter</a></li>
      </ul>
</details>
<details>
   <summary>Themes</summary>
      <ul>
         <li><a href="https://github.com/navarasu/onedark.nvim">onedark.nvim</a></li>
      </ul>
</details>

## Reference

* [Neovim 配置实战：从 0 到 1 打造自己的 IDE](https://github.com/nshen/learn-neovim-lua)
* [Neovim from scratch](https://github.com/LunarVim/Neovim-from-scratch)
* [NVChad](https://github.com/NvChad/NvChad)
