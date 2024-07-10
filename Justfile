set shell := ["nu", "-c"]

deploy:
  sudo nixos-rebuild switch --flake .#desktop

up:
  nix flake update

gc:
  sudo nix store gc --debug
  sudo nix-collect-garbage --delete-old
