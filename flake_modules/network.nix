{
  networking = {
    useDHCP = true;

    networkmanager = {
      enable = true;

      wifi.powersave = true;
    };

    firewall = {
      enable = true;
      allowPing = false;
    };
  };
}
