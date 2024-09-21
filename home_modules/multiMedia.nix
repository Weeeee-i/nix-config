{pkgs, ...}: {
  # Video
  programs.mpv = {
    enable = true;

    config = {
      profile = "high-quality";
      hwdec = "auto";
      video-sync = "display-resample";

      cache = true;
    };
  };

  # Music
  services.mpd = {
    enable = true;
  };

  home.packages = with pkgs; [mpc-cli gwenview ffmpeg libwebp];
}
