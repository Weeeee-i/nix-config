# 输入法
{pkgs, ...}: {
  i18n.inputMethod = {
    # 启用 Fcitx5
    enabled = "fcitx5";
    # 中文输入法模块
    fcitx5.addons = with pkgs; [
      fcitx5-chinese-addons
    ];
  };

  # 相关环境变量
  home.sessionVariables = {
    GTK_IM_MODULE = "fcitx";
    QT_IM_MODULE = "fcitx";
    XMODIFIERS = "@im=fcitx";
  };
}
