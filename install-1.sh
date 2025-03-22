#! /usr/bin/env bash

mkdir -p "$HOME/.config/nix" && echo "experimental-features = nix-command flakes" >> "$HOME/.config/nix/nix.conf"

systemctl restart nix-daemon
