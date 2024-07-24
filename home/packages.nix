{ pkgs, ... }: {
  home.packages = with pkgs; [
    discord
    freetube
    gimp
    obsidian
    spotify
    vscode
  ] ++ [
    neovim
    zip
    unzip
    p7zip
    xdg-utils
    bottom
    tldr
    fd
    ripgrep
    bat
    eza
    just
  ]; 
}
