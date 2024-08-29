{pkgs, ...}: {
  fonts.fontconfig = {
    enable = true;
    defaultFonts = {
      serif = [
        "Source Han Serif SC VF"
        "Noto Serif CJK SC"
        "Noto Serif"
        "JetBrainsMono Nerd Font"
        "Noto Color Emoji"
      ];

      sansSerif = [
        "Source Han Sans SC VF"
        "Noto Sans CJK SC"
        "Noto Sans"
        "JetBrainsMono Nerd Font"
        "Noto Color Emoji"
      ];

      monospace = [
        "Sarasa Mono SC"
        "Noto Sans"
        "Noto Color Emoji"
        "JetBrainsMono Nerd Font"
      ];
    };
  };

  home.packages = with pkgs; [
    noto-fonts
    noto-fonts-cjk-sans
    noto-fonts-cjk-serif

    sarasa-gothic
    noto-fonts-emoji

    source-han-sans-vf-otf
    source-han-serif-vf-otf

    (nerdfonts.override {
      fonts = ["JetBrainsMono"];
    })
  ];
}
