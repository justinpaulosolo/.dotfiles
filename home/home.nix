{ config, pkgs, ... }:
let
  berkeley-mono = pkgs.stdenvNoCC.mkDerivation {
    pname = "berkeley-mono";
    version = "1.0";
    src = ../fonts/berkeley-mono;
    installPhase = ''
      mkdir -p $out/share/fonts/opentype
      cp -r $src/*.otf $out/share/fonts/opentype/
    '';
  };
in
{
  home.username = "justin";
  home.homeDirectory = "/home/justin";
  home.stateVersion = "26.05"; # match whatever you set in configuration.nix — don't bump retroactively

  programs.bash.enable = true;
  programs.kitty.enable = true;

  programs.git = {
    enable = true;
    settings = {
      user = {
        name = "Justin Solo";
        email = "justin@justinsolo.com";
      };
      init.defaultBranch = "main";
      pull.rebase = false;
    };
  };

  programs.ghostty = {
    enable = true;
    enableBashIntegration = true;
    settings = {
      theme = "Abernathy";
      background-opacity = "0.95";
      font-family = "Berkeley Mono";
    };
  };

  programs.waybar = {
    enable = true;
    settings = [
      {
        layer = "top";
        position = "top";
        height = 30;
        modules-left = [
          "hyprland/workspaces"
          "hyprland/mode"
        ];
        modules-center = [
          "clock"
        ];
        "hyprland/workspaces" = {
          format = "{icon}";
          on-click = "activate";
        };
        "clock" = {
          format = "{:%Y-%m-%d %H:%M}";
          tooltip-format = "<big>{:%Y %B}</big>\n<tt><small>{calendar}</small></tt>";
        };
      }
    ];
  };

  wayland.windowManager.hyprland.enable = true;
  wayland.windowManager.hyprland.configType = "hyprlang";
  wayland.windowManager.hyprland.systemd.variables = [ "--all" ];
  wayland.windowManager.hyprland.settings = {
    animations = {
      enabled = true;
      bezier = [
        "fast, 0.2, 0.9, 0.1, 1"
      ];
      animation = [
        "windows, 1, 3, fast"
        "windowsOut, 1, 3, fast"
        "border, 1, 3, fast"
        "fade, 1, 3, fast"
        "workspaces, 1, 3, fast"
      ];
    };

    "$mod" = "SUPER";
    bind =
      [
        "$mod, Return, exec, kitty"
        "$mod, d, exec, rofi -show drun"
        "$mod, Q, killactive"
        "$mod, M, exit"
        "$mod, h, movefocus, l"
        "$mod, j, movefocus, d"
        "$mod, k, movefocus, u"
        "$mod, l, movefocus, r"
        "$mod shift, h, movewindow, l"
        "$mod shift, j, movewindow, d"
        "$mod shift, k, movewindow, u"
        "$mod shift, l, movewindow, r"
      ]
      ++ (
        # workspaces
        # binds $mod + [shift +] {1..10} to [move to] workspace {1..10}
        builtins.concatLists (builtins.genList (
          x: let
            ws = let
              c = (x + 1) / 10;
            in
              builtins.toString (x + 1 - (c * 10));
          in [
            "$mod, ${ws}, workspace, ${toString (x + 1)}"
            "$mod SHIFT, ${ws}, movetoworkspace, ${toString (x + 1)}"
          ]
        )
        8)
      );
  };

  home.packages = with pkgs; [
    kitty
    waybar
    rofi
    brave
    wl-clipboard
  ];

  services.cliphist = {
    enable = true;
    allowImages = true;
  };
}
