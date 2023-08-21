function build_pkg {
  cd $1
  makepkg
  mv *x86_64.pkg.tar.zst ../../../x86_64/
  cd -
}

function push_changes {
  git add x86_64
  git commit -m "scheduled db update"
  git push
}

function add_to_repo {
  cd x86_64
  repo-add cal-repo.db.tar.gz *.pkg.tar.zst
  # ls -la
  mv cal-repo.db.tar.gz cal-repo.db
  mv cal-repo.files.tar.gz cal-repo.files
  cd -
}

function build_pkgs {
  for dir in pkgbuilds/x86_64/*; do 
    build_pkg $dir
  done
}

function update_one {
  build_pkg $1
  add_to_repo
  push_changes
}

function update_all {
  build_pkgs
  add_to_repo
  push_changes
}
