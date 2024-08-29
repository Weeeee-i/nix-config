{pkgs, ...}: {
  programs.gpg = {
    enable = true;
    publicKeys = [
      {source = ../config/gpg-key.pub;}
    ];
  };

  services.gpg-agent = {
    enable = true;
    pinentryPackage = pkgs.pinentry-all;
  };
}
