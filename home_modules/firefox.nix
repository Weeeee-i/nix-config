{pkgs, ...}: {
  programs.firefox = {
    enable = true;
    # languagePacks = ["zh-CN" "en-US"];
    #policies = {
    #  ExtensionSettings = {
    #    "jid1-MnnxcxisBPnSXQ@jetpack" = {
    #      installation_mode = "normal_installed";
    #      install_url = "https://addons.mozilla.org/firefox/downloads/latest/jid1-MnnxcxisBPnSXQ@jetpack/latest.xpi";
    #    };
    #    "jid1-ZAdIEUB7XOzOJw@jetpack" = {
    #      installation_mode = "normal_installed";
    #      install_url = "https://addons.mozilla.org/firefox/downloads/latest/jid1-ZAdIEUB7XOzOJw@jetpack/latest.xpi";
    #    };
    #    "uBlock0@raymondhill.net" = {
    #      installation_mode = "normal_installed";
    #      install_url = "https://addons.mozilla.org/firefox/downloads/latest/ublock-origin/latest.xpi";
    #    };
    #    "skipredirect@sblask" = {
    #      installation_mode = "normal_installed";
    #      install_url = "https://addons.mozilla.org/firefox/downloads/latest/skipredirect@sblask/latest.xpi";
    #    };
    #  };
    #};
  };
}
