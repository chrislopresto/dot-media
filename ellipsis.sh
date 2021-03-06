#!/usr/bin/env bash

pkg.link() {
  # Directories
  mkdir -p "$ELLIPSIS_HOME/.config"
  fs.link_file config/beets "$ELLIPSIS_HOME/.config/beets"

  fs.link_file mpd
  fs.link_file ncmpcpp

  mkdir -p "$ELLIPSIS_HOME/.zsh"
  fs.link_file zsh/dot-media "$ELLIPSIS_HOME/.zsh/dot-media"

  # Files
  fs.link_file abcde.conf
  fs.link_file Brewfile.dot-media
}

pkg.unlink() {
  rm "$ELLIPSIS_HOME/.config/beets"
  rm "$ELLIPSIS_HOME/.zsh/dot-media"

  hooks.unlink
}

pkg.install() {
  $PKG_PATH/script/bootstrap $PKG_PATH
}
