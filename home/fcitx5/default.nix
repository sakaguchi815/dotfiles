{pkgs, ...}: {
	i18n.inputMethod = {
	  enabled = "fcitx5";
	  fcitx5.addons = [
	    pkgs.fcitx5-mozc 
	    pkgs.fcitx5-configtool
	  ];
};
}
