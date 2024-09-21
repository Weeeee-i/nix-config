{
  programs.firefox = {
    enable = true;

    policies = {
      Bookmarks = [
        {
          Title = "NixSearch";
          URL = "https://search.nixos.org";
        }
        {
          Title = "Example";
          URL = "https://example.com";
        }
      ];

      ExtensionSettings = {
        "jid1-MnnxcxisBPnSXQ@jetpack" = {
          installation_mode = "normal_installed";
          install_url = "https://addons.mozilla.org/firefox/downloads/latest/jid1-MnnxcxisBPnSXQ@jetpack/latest.xpi";
        };
        "jid1-ZAdIEUB7XOzOJw@jetpack" = {
          installation_mode = "normal_installed";
          install_url = "https://addons.mozilla.org/firefox/downloads/latest/jid1-ZAdIEUB7XOzOJw@jetpack/latest.xpi";
        };
        "uBlock0@raymondhill.net" = {
          installation_mode = "normal_installed";
          install_url = "https://addons.mozilla.org/firefox/downloads/latest/ublock-origin/latest.xpi";
        };
        "skipredirect@sblask" = {
          installation_mode = "normal_installed";
          install_url = "https://addons.mozilla.org/firefox/downloads/latest/skipredirect@sblask/latest.xpi";
        };
      };
    };
  };

  programs.chromium = {
    enable = true;
  };
}
