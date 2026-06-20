{ pkgs, ... }:
{
  wayland.windowManager.hyprland.settings = {
    monitor = [
      "HDMI-A-2, 1920x1080@120, -1920x0, 1"
      "DP-6, 2560x1440@239.97, 0x0, 1"
    ];
    cursor = {
      default_monitor = "DP-6";
    };
    workspace = [
      "1, monitor:DP-6, default:true"
      "2, monitor:DP-6"
      "3, monitor:DP-6"
      "4, monitor:DP-6, on-created-empty:discord"
      "5, monitor:HDMI-A-2"
      "6, monitor:HDMI-A-2"
      "7, monitor:HDMI-A-2"
      "8, monitor:HDMI-A-2"
    ];
  };

  home.packages = with pkgs; [
    discord
  ];
}
