{ pkgs, ... }: {
  home.packages = with pkgs; [
    discord
    freetube
    gimp
    neovim
    obsidian
    spotify
    vscode
  ] ++ [
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
