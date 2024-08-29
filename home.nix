{
  config,
  pkgs,
  ...
}: {
  home.username = "wei";
  home.homeDirectory = "/home/wei";

  imports = [
    ./hosts/youc/home.nix
    ./hosts/youc/config.nix
  ];

  home.stateVersion = "24.05";

  programs.home-manager.enable = true;
}
