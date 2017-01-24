#!/bin/zsh

function rip() {
  echo "Ripping with abcde"
  diskutil umount /dev/disk2
  abcde -z
}
