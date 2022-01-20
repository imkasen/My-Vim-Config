# My Vim Configuration

A simple vim-related configuration for basic file editing.

## Files

* `.ideavimrc` for IdeaVim : symbolic link to `~/.ideavimrc`
* `.vimrc` for Vim : symbolic link to `~/.vimrc`

  ``` bash
  cd
  ln -s vime/.vimrc .vimrc
  ```

* `init.vim` for NeoVim : symbolic link to `~/.config/nvim/init.vim`

  ``` bash
  cd ~/.config/nvim/
  ln -s ~/vime/init.vim init.vim
  ```

* `config/`
  * `plugins/` : a configuration file for each plugin
  * `base.vim` : the basic vim configuration
  * `plugin-list.vim` : a vim-plug list

## Usage

1. Install Vim or NeoVim
2. Install Node.js
3. Install vim-plug
4. Install plugins
