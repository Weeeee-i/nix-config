# 其他工具
{
  # Git
  programs.git.enable = true;

  # Zsh，默认的 Shell
  programs.zsh.enable = true;

  # Light，屏幕亮度调整
  programs.light.enable = true;

  # Neovim，文本编辑器，配置后也可作为 IDE 使用
  programs.neovim = {
    enable = true;
    defaultEditor = true;
  };

  # Pcscd，读取 Canokey 的使用需要使用
  services.pcscd.enable = true;
}
