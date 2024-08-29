{pkgs, ...}: {
  home.packages = with pkgs; [
    lua-language-server
    postgres-lsp
    markdown-oxide
    nixd
    ruff
  ];
}
