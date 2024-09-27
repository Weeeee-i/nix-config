# Nvidia 显卡设置
# NixOS Wiki: https://wiki.nixos.org/wiki/Nvidia
{
  pkgs,
  config,
  ...
}: {
  services.xserver.videoDrivers = ["nvidia"];

  hardware.nvidia = {
    modesetting.enable = true;

    powerManagement.enable = true;

    powerManagement.finegrained = true;

    # 并不是所有 Nvidia 显卡都支持开源驱动，即使支持，也有一些功能缺失，所以不建议开启。
    # 支持开源驱动的显卡：https://github.com/NVIDIA/open-gpu-kernel-modules#cmmpatible-gpus
    open = false;

    nvidiaSettings = true;

    package = config.boot.kernelPackages.nvidiaPackages.stable;

    prime = {
      offload = {
        enable = true;
        enableOffloadCmd = true;
      };

      # 此处 Id 与设备有关，需要参考 Wiki 填入对应的地址
      # 参考：https://wiki.nixos.org/wiki/Nvidia#Laptop_configuration:_hybrid_graphics_(Optimus_PRIME)
      amdgpuBusId = "PCI:5:0:0";
      nvidiaBusId = "PCI:1:0:0";
    };
  };

  # Nvtop，可用来监控 GPU 使用情况的命令行工具
  # 非 Nvidia GPU 也可以使用
  environment.systemPackages = [
    pkgs.nvtopPackages.full
  ];
}
