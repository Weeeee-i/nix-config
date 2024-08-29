{
  programs.zsh = {
    enable = true;

    zsh-autoenv.enable = true;
    autosuggestions.enable = true;

    shellAliases = {
      update = "sudo -E nixos-rebuild switch --flake \${NIX_CONFIG_DIR}";
    };
  };
}
