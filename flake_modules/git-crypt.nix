{pkgs, ...}: {
  imports = [./git.nix];

  environment.systemPackages = [
    pkgs.git-crypt
  ];
}
