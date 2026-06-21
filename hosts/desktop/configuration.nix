{ config, lib, pkgs, ... }:
{
  imports = [
    ./hardware-configuration.nix
    ../common.nix
  ];

  networking.hostName = "nixos-desktop";

  hardware.cpu.amd.updateMicrocode = true;

  environment.sessionVariables = {
    LIBVA_DRIVER_NAME = "nvidia";
    GBM_BACKEND = "nvidia-drm";
    __GLX_VENDOR_LIBRARY_NAME = "nvidia";
  };

  boot.kernelParams = [ "nvidia-drm.modeset=1" ];

  services.xserver.videoDrivers = [ "nvidia" ];
  
  hardware.graphics = {
    enable32Bit = true;
  };

  hardware.nvidia = {
    modesetting.enable = true;
    powerManagement.enable = true;
    powerManagement.finegrained = false;
    open = true;
    nvidiaSettings = true;
  };

  programs.steam = {
   enable = true;
   remotePlay.openFirewall = true;
   dedicatedServer.openFirewall = true;
   gamescopeSession.enable = true;
  };

  programs.gamemode = {
    enable = true;
    settings = {
      general = {
        renice = 10;
      };
    };
  };

  system.stateVersion = "26.05";
}
