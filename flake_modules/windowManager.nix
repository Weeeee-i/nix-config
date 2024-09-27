# 窗口管理器
{pkgs, ...}: {
  # 使用 Greetd + TuiGreet 作为登陆界面
  services.greetd = {
    enable = true;
    settings = {
      default_session = {
        command = "${pkgs.greetd.tuigreet}/bin/tuigreet -r --time --cmd hyprland";
      };
    };
  };

  # 使用 Hyprland 作为窗口管理器
  programs.hyprland.enable = true;

  environment.systemPackages = with pkgs; [
    eww # 可高度定制化的状态栏
    wofi # 应用启动器
    dunst # 通知程序
  ];

  # XWayland
  programs.xwayland.enable = true;

  # 浏览器
  imports = [./browser.nix];
}
