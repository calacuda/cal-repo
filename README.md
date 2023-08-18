# cal-repo

the custom repos for CAL Linux

## Adding This Repo

to add this repo add the foloowing to your `/etc/pacman.conf` file.

```
[cal-repo]
SigLevel = Optional DatabaseOptional
Server = https://github.com/calacuda/$repo/raw/main/$arch
```

## Packages to Add

a list of things to package and add to this repo.

- pokedex
- autodesk
