set shell := ["nu", "-c"]

deploy:
  sudo nixos-rebuild switch --flake .#desktop

up:
  sudo nix flake update

gc:
  sudo nix store gc --debug
  sudo nix-collect-garbage --delete-old
