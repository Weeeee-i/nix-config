{pkgs, ...}: {
  home.packages = [pkgs.uv];

  imports = [./python.nix];
}
