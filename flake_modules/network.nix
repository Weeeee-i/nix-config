# 网络设置
{lib, ...}: {
  networking = {
    # 默认所有接口使用 DHCP
    useDHCP = lib.mkDefault true;

    # 使用 NetworkManager 管理网络
    networkmanager = {
      enable = true;

      wifi.powersave = true;
    };

    # 防火墙设置
    firewall = {
      enable = false;
      allowPing = false;
    };
  };
}
