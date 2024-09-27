# 内核设置
{pkgs, ...}: {
  boot.kernelPackages = pkgs.linuxPackages;
  boot.consoleLogLevel = 1;
}
