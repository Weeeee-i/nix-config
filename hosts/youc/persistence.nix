{
  environment.persistence."/persistent" = {
    directories = [
      "/var/log"
      "/var/lib/nixos"
      "/var/lib/systemd/coredump"
      "/etc/NetworkManager/system-connections"
    ];

    files = [
      "/etc/machine-id"
    ];

    users.wei = {
      directories = [
        "Downloads"
        "Music"
        "Pictures"
        "Documents"
        "Videos"
        "Containers"
        "Persistent"
        "KeepassXC"
        "Scripts"
        ".local/share/nvim"
        ".local/share/Anki2"
        ".local/share/zinit"
        ".local/state/syncthing"
        ".mozilla"
        ".config/mihomo"
        ".config/fcitx5"
        ".config/rclone"
        ".config/obsidian"
        {
          directory = ".gnupg";
          mode = "0700";
        }
        {
          directory = ".ssh";
          mode = "0700";
        }
      ];

      files = [
        ".zshrc"
      ];
    };
  };
}
