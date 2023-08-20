#!/usr/bin/zsh

build_pkg () {
  cd $1
  makepkg
  mv *x86_64.pkg.tar.zst ../../../x86_64/
  cd -
}

push-changes () {
  git add x86_64
  git commit -m "scheduled db update"
  git push
}

add-to-repo () {
  cd x86_64
  repo-add cal-repo.db.tar.gz *.pkg.tar.zst
  mv cal-repo.db.tar.gz cal-repo.db
  mv cal-repo.files.tar.gz cal-repo.files
  cd -
}

build-pkgs () {
  for dir in pkgbuilds/x86_64/*; do 
    build_pkg $dir
  done
}

update-one () {
  build_pkg $1
  add-to-repo
  push-changes
}

update-all () {
  build-pkgs
  add-to-repo
  push-changes
}
