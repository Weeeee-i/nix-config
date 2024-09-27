# 应用程序
{pkgs, ...}: {
  # Bottom，Htop 的替代，系统资源监视器
  programs.bottom = {
    enable = true;
    settings = {
      flags = {
        hide_table_gap = true;
        battery = true;
        color = "nord";
        network_use_bytes = true;
      };
    };
  };

  # Git，版本控制软件
  programs.git = {
    enable = true;
    signing = {
      signByDefault = false;
      key = "Weeeeei";
    };
    userEmail = "weeeeei@duck.com";
    userName = "weeeee-i";
  };

  # GPG，非对称加密/解密
  programs.gpg = {
    enable = true;
    publicKeys = [
      {source = ../config/gpg-key.pub;}
    ];
  };

  services.gpg-agent = {
    enable = true;
    pinentryPackage = pkgs.pinentry-qt;
  };

  # SSH
  programs.ssh = {
    enable = true;
  };

  # 命令行中的文件管理器
  programs.yazi = {
    enable = true;
    enableZshIntegration = true;
  };

  # 终端模拟器
  programs.foot = {
    enable = true;
    settings = {
      main = {
        term = "xterm-256color";
        font = "monospace:size=8";
        dpi-aware = "yes";
      };

      mouse = {
        hide-when-typing = "yes";
      };
    };
  };

  # Ripgrep，更快的 grep
  programs.ripgrep.enable = true;

  # Syncthing，多设备的文件同步
  services.syncthing.enable = true;

  home.packages = with pkgs; [
    p7zip # 压缩/解压缩

    keepassxc # 密码管理器

    mihomo # 代理

    obsidian # 笔记整理

    okular # PDF 阅读

    font-manager # 查看字体文件

    python3 # 编写自动化脚本
    uv # Python3 的虚拟环境（venv）管理

    rclone # 网盘访问/挂载

    anki # 卡片制作和记忆

    # LSP 程序
    lua-language-server # Lua
    postgres-lsp # Postgres
    markdown-oxide # Markdown
    nixd # Nix
    ruff # Python

    # 代码格式化
    stylua # Lua
    prettierd # HTML, CSS, JS
    alejandra # Nix
  ];
}
