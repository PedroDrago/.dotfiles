### To-do

- populate laptop and 42 directories
    - Make stowing script for each one
- improove fzf experience
    - Make so that CTRL+f is the only binding. If the destiny is a directory cd into it, if it is a file, vim the file
- configure tmux or zelliJ
    - If terminal multiplexer work feels nice, change so that fzf works in a different way: It will still remain the behavior for directories and files, but now it will always create a new window/tab/tile/workspace (whatever it is called) in the multiplexer, with the directory/file name, but only if that window/tab/tile/workspace does not exist, if it exists, it will only change to that window/tab/tile/workspace.

### Kickstart
```bash
git clone git@github.com:PedroDrago/.dotfiles.git && cd .dotfiles && bash setup
```
