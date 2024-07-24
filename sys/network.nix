  { pkgs, ... }: {
  networking.hostName = "nixos"; # Define your hostname.
  # networking.wireless.enable = true;  # Enables wireless support via wpa_supplicant.

  # Configure network proxy if necessary
  # networking.proxy.default = "http://user:password@proxy:port/";
  # networking.proxy.noProxy = "127.0.0.1,localhost,internal.domain";

  # Enable networking
  networking.networkmanager.enable = true;

  services.resolved = {
    enable = true;
    extraConfig = 
      ''
        DNS=45.90.28.0#49d3fc.dns.nextdns.io
        DNS=2a07:a8c0::#49d3fc.dns.nextdns.io
        DNS=45.90.30.0#49d3fc.dns.nextdns.io
        DNS=2a07:a8c1::#49d3fc.dns.nextdns.io
        DNSOverTLS=yes
      '';
  };
}

