# 系统引导器设置
{
  boot.loader = {
    timeout = 1;
    # 使用 Systemd-boot 作为系统引导器
    systemd-boot = {
      enable = true;
      editor = false;
      # 设置最大条目数量
      configurationLimit = 10;
    };
  };

  imports = [./kernel.nix];
}
