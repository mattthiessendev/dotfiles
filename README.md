# dotfiles
My first swing at setting up a neovim environment and the dotfiles that go along with it.

# Required
### <img src="https://avatars.githubusercontent.com/u/6471485?s=48&v=4" width="30" height="30"> Neovim
[Install Instructions](https://github.com/neovim/neovim/blob/master/INSTALL.md)

### <img src="https://www.lazyvim.org/img/icon.svg" width="30" height="30"> LazyVim
[Install Instructions](https://lazy.folke.io)

### ripgrep
[Install Instructions](https://github.com/BurntSushi/ripgrep?tab=readme-ov-file#installation)

# Optional
### <img src="https://alacritty.org/alacritty-simple.svg" width="30" height="30"> Alacritty
[Install](https://alacritty.org/index.html#Installation)
[Configuration](https://alacritty.org/config-alacritty.html)

# Goals
- Create a windows friendly install script
- Add a smoother debugging experience

# Keymaps (WIP)
|Key|Package|Action|
|-|-|-|
|\<leader\>pv|vim|cmd.Ex|
|\<leader\>pf|telescope|find_files()| 
|\<C-p\>|telescope|git_files()|
|\<leader\>ps|telescope|grep_string()|
|\<leader\>a|harpoon|add_file|
|\<C-e\>|harpoon|toggle_quick_menu|
|\<C-h|harpoon|nav_file(1)|
|\<C-t|harpoon|nav_file(2)|
|\<C-n|harpoon|nav_file(3)|
|\<C-s|harpoon|nav_file(4)|
|\<F5\>|dap|continue()|
|\<F10\>|dap|step_over()|
|\<F11\>|dap|step_into()|
|\<F12\>|dap|step_out()|
|\<leader\>b|dap|toggle_breakpoint()|
|\<leader\>B|dap|set_breakpoint()|
|\<leader\>lp|dap|set_breakpoint("Log Message")|
|\<leader\>dr|dap|repl.open()|
|\<leader\>dl|dap|run_last()|
|\<leader\>dh|dap|ui.widgets.hover()|
|\<leader\>dp|dap|ui.widgets.preview()|
|\<leader\>df|dap|ui.widgets.centered_float(frames)|
|\<leader\>ds|dap|ui.widgets.centered_float(scopes)|
|gd|lsp-zero|buf.definition()|
|K|lsp-zero|buf.hover()|
|\<leader\>vws|lsp-zero|buf.workspace_symbol()|
|\<leader\>vd|lsp-zero|diagnostic.open_float()|
|[d|lsp-zero|diagnostic.goto_next()|
|]d|lsp-zero|diagnostic.goto_prev()|
|\<leader\>vca|lsp-zero|buf.code_action()|
|\<leader\>vrr|lsp-zero|buf.references()|
|\<leader\>vrn|lsp-zero|buf.rename()|
|"i"\<C-h\>|lsp-zero|buf.signature_help()|

