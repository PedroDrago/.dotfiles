# AGENTS.md

This repository stores Linux dotfiles and setup scripts. The root of the repo mirrors `$HOME`, and `stow` is used to create or remove symlinks from this repo into the live home directory.

## Intent

- Keep configuration for shell, terminal, window managers, editors, and related Linux tooling in one place.
- Use `./install` to adopt and symlink the repo into `$HOME`.
- Use `./uninstall` to remove those symlinks.

## Repo Shape

- Top-level dotfiles such as `.zshrc`, `.tmux.conf`, `.vimrc`, `.gitconfig`, `.Xresources`, and `.p10k.zsh` are stow-managed directly from the repo root.
- `.config/` contains application configs for `alacritty`, `ghostty`, `hypr`, `i3`, `i3status`, `mise`, `rofi`, `sway`, `waybar`, wallpapers, and others.
- `.config/nvim` is a git submodule, not a plain directory. Treat it as a separate repo with its own history and README.

## Setup Flow

Current behavior of the scripts matters more than idealized behavior:

- `./install`
  - runs `./uninstall` first
  - runs `stow --adopt .`
  - checks out `main` inside `.config/nvim`
  - detects monitor count with `xrandr`
  - creates `~/.config/i3/config` as a symlink to either the single-monitor or dual-monitor i3 config
- `./uninstall`
  - runs `stow -D .`
  - removes `~/.config/i3/config`

## Constraints For Agents

- Do not assume this repo is safe to apply blindly on a non-Linux machine.
- Be careful with `stow --adopt`: it can move live files into the repo. Do not run install/uninstall unless the task explicitly calls for it.
- Avoid editing generated symlinks in `$HOME`; edit the source files in this repo instead.
- If work touches `.config/nvim`, note clearly whether the change belongs in the submodule or in the parent dotfiles repo.
- Respect existing uncommitted changes. This repo may be actively used as a live config source.

## Editing Guidance

- Prefer small, targeted changes. Dotfiles often encode personal workflow assumptions.
- Preserve the current style of each config file unless the task is an intentional cleanup.
- When changing setup behavior, verify whether `.stow-local-ignore` also needs an update so repo-only files are not symlinked into `$HOME`.
- For window-manager changes, check whether the same keyboard, launcher, wallpaper, or monitor behavior is duplicated across `hypr`, `sway`, and `i3`.

## Known Repository Details

- `.stow-local-ignore` is used to keep repo metadata and non-dotfile artifacts out of the stow package.
- The i3 config is selected outside stow by the install script, so `~/.config/i3/config` is intentionally managed as an extra symlink.
- The README is partly a bootstrap note and partly a personal TODO list, so treat it as project context rather than strict specification.

## Preferred Verification

- For documentation-only changes, verify file placement and stow ignore rules.
- For script changes, review shell syntax and reason through effects on `$HOME`.
- For config changes, prefer static review unless the user explicitly asks to apply or test them in the current session.
