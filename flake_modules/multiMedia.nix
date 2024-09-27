# 多媒体相关
{pkgs, ...}: {
  # 声音管理
  # 使用 Pipewire 管理
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true; # Alsa 兼容
    pulse.enable = true; # Pulse 兼容
  };

  # 使用 `alsa-utils` 提供的 `amixer` 和 `alsamixer` 控制音量
  environment.systemPackages = [pkgs.alsa-utils];
}
