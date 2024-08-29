{pkgs, ...}: {
  home.packages = with pkgs; [
    luaformatter
    prettierd
    alejandra
  ];
}
