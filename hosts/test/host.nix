# Host Config File
{
  imports = [
    ../../flake_modules/neovim.nix
    ../../flake_modules/git.nix
    ../../flake_modules/system-boot.nix
    ../../flake_modules/network.nix
    ../../flake_modules/zsh.nix
    ../../flake_modules/pcscd.nix
    ../../flake_modules/alsa-utils.nix
    ../../flake_modules/light.nix
    ../../flake_modules/auto-cpufreq.nix
    ../../flake_modules/opengl.nix
    ../../flake_modules/nvidia.nix
    ../../flake_modules/podman.nix
    ../../flake_modules/i18n.nix
  ];
}
