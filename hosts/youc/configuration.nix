{
  config,
  lib,
  pkgs,
  ...
}: {
  imports = [
    ./host.nix
    ./hardware-configuration.nix
  ];

  nixpkgs.config.allowUnfree = true;

  boot.loader.efi.canTouchEfiVariables = true;

  networking.hostName = "youc";

  i18n.defaultLocale = "en_US.UTF-8";

  users.users.wei = {
    shell = pkgs.zsh;
    hashedPassword = "$7$CU..../....7GRQfeRgBdvzDwwrLDsBZ1$xamGima2ie59toctmbSXHcWFAiU0o7p71Q2kdCyKoB7";
    isNormalUser = true;
    extraGroups = ["wheel" "video"];
  };

  nix.settings.experimental-features = ["nix-command" "flakes"];

  system.stateVersion = "24.05";
}
