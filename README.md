# cal-repo

the custom repos for [CAL Linux](https://github.com/calacuda/cal-linux)

## Adding This Repo

to add this repo add the foloowing to your `/etc/pacman.conf` file.

```
[cal-repo]
SigLevel = Optional DatabaseOptional
Server = https://github.com/calacuda/$repo/raw/main/$arch
```

## Packages to Add

a list of things to package and add to this repo.

- pokedex-git
- autodesk-git
- auto-tmux-git
- astro-nvim-git
- astro-nvim-configs-git
- bspwm-configs-git
- qtile-configs-git
- hyprland-configs-git
