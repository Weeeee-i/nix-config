# 字体
{pkgs, ...}: {
  fonts.fontconfig = {
    enable = true;
    # 默认字体设置
    defaultFonts = {
      # 衬线体/宋体
      serif = [
        "Source Han Serif SC VF"
        "Noto Serif CJK SC"
        "Noto Serif"
        "JetBrainsMono Nerd Font"
        "Noto Color Emoji"
      ];

      # 黑体
      sansSerif = [
        "Source Han Sans SC VF"
        "Noto Sans CJK SC"
        "Noto Sans"
        "JetBrainsMono Nerd Font"
        "Noto Color Emoji"
      ];

      # 等宽
      monospace = [
        "Sarasa Mono SC"
        "Noto Sans"
        "Noto Color Emoji"
        "JetBrainsMono Nerd Font"
      ];
    };
  };

  home.packages = with pkgs; [
    # Noto 字族
    noto-fonts
    noto-fonts-cjk-sans
    noto-fonts-cjk-serif
    noto-fonts-emoji

    # 更纱黑体
    sarasa-gothic

    # 思源
    source-han-sans-vf-otf
    source-han-serif-vf-otf

    # Nerd Font
    (nerdfonts.override {
      fonts = ["JetBrainsMono"];
    })
  ];
}
