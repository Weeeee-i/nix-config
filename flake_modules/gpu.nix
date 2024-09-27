# GPU 配置
## NixOS Wiki: https://wiki.nixos.org/wiki/Graphics
{
  hardware.opengl.enable = true; # NixOS 24.11 之前的版本使用
  # hardware.graphics.enable = true; # NixOS 24.11 之后的版本使用

  # Nvidia 显卡设置
  imports = [./nvidia.nix];
}
