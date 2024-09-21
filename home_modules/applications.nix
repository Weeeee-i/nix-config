{pkgs, ...}: {
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

  programs.git = {
    enable = true;
    signing = {
      signByDefault = true;
      key = "Weeeeei";
    };
    userEmail = "weeeeei@duck.com";
    userName = "weeeee-i";
  };

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

  programs.ssh = {
    enable = true;
  };

  programs.yazi = {
    enable = true;
    enableZshIntegration = true;
  };

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

  programs.ripgrep.enable = true;
  programs.starship.enable = true;

  services.syncthing.enable = true;

  home.packages = with pkgs; [
    p7zip

    keepassxc

    mihomo

    obsidian

    okular

    python3

    rclone

    lua-language-server
    postgres-lsp
    markdown-oxide
    nixd
    ruff

    luaformatter
    prettierd
    alejandra
  ];
}
