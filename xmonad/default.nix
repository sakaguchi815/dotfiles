{pkgs, ...}: {
  services.displayManager.defaultSession = "none+xmonad";
  services.xserver.windowManager.xmonad = {
    enable = true;
    enableContribAndExtras = true;
    config = builtins.readFile ./xmonad.hs;
    extraPackages = haskellPackages: [
      haskellPackages.xmobar
    ];
  };

  services.xserver = {
    displayManager = {
      lightdm.enable = false;
      gdm.enable = true;
    };
  };

  environment.systemPackages = with pkgs; [
    dmenu
    feh
    gmrun
    xmobar
  ];
}
