# 电源管理
{
  # 使用 Auto-cpufreq 管理电源
  # Github: https://github.com/AdnanHodzic/auto-cpufreq
  services.auto-cpufreq = {
    enable = true;

    settings = {
      charger = {
        governor = "performance";
        turbo = "auto";
      };

      battery = {
        governor = "powersave";
        turbo = "off";
      };
    };
  };
}
