# 多媒体文件的编辑与查看
{pkgs, ...}: {
  # 视频
  # 使用 MPV 作为视频播放器
  # MPV 也可以播放音乐、图片等文件
  programs.mpv = {
    enable = true;

    config = {
      profile = "high-quality";
      hwdec = "auto";
      video-sync = "display-resample";

      cache = true;
    };
  };

  # 音乐播放器 MPD
  services.mpd = {
    enable = true;
    musicDirectory = "$HOME/Music";
  };

  home.packages = with pkgs; [
    mpc-cli # 控制 MPD
    gwenview # 图片查看
    ffmpeg # 文件转码
    libwebp # WebP 文件的编码
  ];
}
