{pkgs, ...}: {
  # Greetd
  services.greetd = {
    enable = true;
    settings = {
      default_session = {
        command = "${pkgs.greetd.tuigreet}/bin/tuigreet -r --time --cmd hyprland";
      };
    };
  };

  # Hyprland
  programs.hyprland.enable = true;

  environments.packages = with pkgs; [
    eww # Bar
    wofi # Application Launcher
  ];

  # XWayland
  programs.xwayland.enable = true;

  # Browsers
  imports = [./firefox.nix];
}
