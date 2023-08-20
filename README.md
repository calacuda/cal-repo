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
- astro-nvim-git
- astro-nvim-configs-git
- bspwm-configs-git
- qtile-configs-git
- hyprland-configs-git

## TODO:

- add install of home folder scripts to `/etc/skel` for pkg pentestdb-git
- add github workflow to do the following every sundays at midnight:
  - rebuild all pkg builds.
  - add the new packages to the package db.
  - commit the updated packages and data base but not the updated PKGBUILDS.
