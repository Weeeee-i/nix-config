{pkgs, ...}: {
  imports = [
    ./host.nix
    ./persistence.nix
    ./hardware-configuration.nix
  ];

  # 允许使用非自由软件
  nixpkgs.config.allowUnfree = true;

  boot.loader.efi.canTouchEfiVariables = true;

  # 主机名
  networking.hostName = "youc";

  # 用户
  users.users.wei = {
    shell = pkgs.zsh;
    hashedPassword = "$7$CU..../....7GRQfeRgBdvzDwwrLDsBZ1$xamGima2ie59toctmbSXHcWFAiU0o7p71Q2kdCyKoB7";
    isNormalUser = true;
    extraGroups = ["wheel" "video"];
  };

  nix.settings.experimental-features = ["nix-command" "flakes"];

  system.stateVersion = "24.05";
}
