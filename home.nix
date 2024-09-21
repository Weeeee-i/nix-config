{
  config,
  pkgs,
  ...
}: {
  home.username = "wei";
  home.homeDirectory = "/home/wei";

  imports = [
    ./home
    ./config
  ];

  home.stateVersion = "24.05";

  programs.home-manager.enable = true;
}
