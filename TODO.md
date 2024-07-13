# Terminal Multiplexer
- [ ] Migrate to chezmoi
- Decide whether to stick with Tmux or ZelliJ. The focus should be finding the easiest one to integrate with my workflow, and that is based on two things:
1. The ability to jump between "terminals" with just 2 keystrokes, the same way I can do with i3, or neovim. CTRL+1, CTRL+2, CTRL+3 etc. should jump me to the right terminal.
2. The ability to integrate with my [Finder](./scripts/finder) script to create a good workflow: When using finder and selecting something, it will see if there is already a terminal named like that, if it has, then it will just jump to that terminal, if not it will create a new tmux/zelliJ terminal, named with the selected directory/file. Preferably if it is a directory, it will launch a Tmux/zelliJ terminal in that place, and if it is a file, it will launch the terminal in that file directory then open the file in `nvim`
3. This [plugin](https://www.reddit.com/r/neovim/comments/1aqic8y/merge_tmux_and_vim_statusline/) allowst o merge tmux bar with lualine, but it is a bit old.

# dmenu alternative
- The only one that i've find is [Rofi](https://github.com/davatorium/rofi), but it's very bloated and weird to configure. The goal is to be able to configure rofi powermenu to a minimal dmenu like configuration (with the recommended themes), and to eliminate all bloat that exists in the rofi package.
- Another one that i've found is [Onagre](https://github.com/onagre-launcher/onagre), which looks cool, and is only a dmenu alternative, and seemes easier to configure and install.
