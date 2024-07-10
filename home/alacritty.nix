{ pkgs, ... }:

# terminals

let
  # font = "JetBrainsMono Nerd Font";
  font = "HackGen Console NF";
in
{
  programs.alacritty = {
    enable = true;
    settings = {
      window.opacity = 0.95;
      window.dynamic_padding = true;
      window.padding = {
        x = 5;
        y = 5;
      };
      scrolling.history = 10000;

      font = {
        normal.family = font;
        bold.family = font;
        italic.family = font;
        size = 13;
      };

      shell = {
        program = /etc/profiles/per-user/imokenpi/bin/nu;
      };
    };
  };
}
