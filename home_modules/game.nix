{pkgs, ...}: {
  home.packages = with pkgs; [
    steam

    keyutils
    libkrb5

    libpng
    libpulseaudio
    libvorbis
    stdenv.cc.cc.lib
    xorg.libXcursor
    xorg.libXi
    xorg.libXinerama
    xorg.libXScrnSaver
  ];
}
