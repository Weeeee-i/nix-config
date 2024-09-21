{
  boot.loader = {
    timeout = 1;
    systemd-boot = {
      enable = true;
      editor = false;
      configurationLimit = 10;
    };
  };

  imports = [./kernel.nix];
}
