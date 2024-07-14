{ config, pkgs, ... }:

{
  imports = [
    ./nushell
    ./wm
    ./alacritty.nix
    ./fcitx5.nix
    ./git.nix
    ./packages.nix
    ./starship.nix
  ];

  home = {
    username = "imokenpi";
    homeDirectory = "/home/imokenpi";

    # This value determines the home Manager release that your
    # configuration is compatible with. This helps avoid breakage
    # when a new home Manager release introduces backwards
    # incompatible changes.
    #
    # You can update home Manager without changing this value. See
    # the home Manager release notes for a list of state version
    # changes in each release.
    stateVersion = "24.05";
  };

  # Let home Manager install and manage itself.
  programs.home-manager.enable = true;
  
  gtk = {
    enable = true;
    theme = {
      name = "Adwaita-dark";
    };
  };
}
