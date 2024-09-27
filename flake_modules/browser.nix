# 浏览器
{
  # Firefox 浏览器
  # 默认添加了 NixSearch 和 HomeManager 的书签，以及一些插件
  programs.firefox = {
    enable = true;

    policies = {
      # 收藏夹
      Bookmarks = [
        {
          Title = "NixSearch";
          URL = "https://search.nixos.org";
        }
        {
          Title = "HomeManagerConfiguration";
          URL = "https://nix-community.github.io/home-manager/options.xhtml";
        }
      ];

      # 插件列表
      # Mozilla 官方文档：https://mozilla.github.io/policy-templates/#extensionsettings
      ExtensionSettings = {
        # Privacy Badger 插件
        "jid1-MnnxcxisBPnSXQ@jetpack" = {
          installation_mode = "normal_installed";
          install_url = "https://addons.mozilla.org/firefox/downloads/latest/jid1-MnnxcxisBPnSXQ@jetpack/latest.xpi";
        };
        # DuckDuckGo Privacy Essentials 插件
        "jid1-ZAdIEUB7XOzOJw@jetpack" = {
          installation_mode = "normal_installed";
          install_url = "https://addons.mozilla.org/firefox/downloads/latest/jid1-ZAdIEUB7XOzOJw@jetpack/latest.xpi";
        };
        # uBlock Origin 插件，需要连接外网才能正常安装
        "uBlock0@raymondhill.net" = {
          installation_mode = "normal_installed";
          install_url = "https://addons.mozilla.org/firefox/downloads/latest/ublock-origin/latest.xpi";
        };
        # Skip Redirect 插件
        "skipredirect@sblask" = {
          installation_mode = "normal_installed";
          install_url = "https://addons.mozilla.org/firefox/downloads/latest/skipredirect@sblask/latest.xpi";
        };
        # FoxyProxy 插件
        "foxyproxy@eric.h.jung" = {
          installation_mode = "normal_installed";
          install_url = "https://addons.mozilla.org/firefox/downloads/latest/foxyproxy@eric.h.jung/latest.xpi";
        };
      };
    };
  };

  # Chromium
  # 并不常用，所以并没有配置
  programs.chromium = {
    enable = true;
  };
}
