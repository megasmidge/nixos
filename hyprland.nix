{ config, pkgs, lib, ... }:
{

  
   services.xserver.enable = true;
   services.xserver.displayManager.sddm.enable = true;
   services.xserver.displayManager.sddm.wayland.enable = true;
   services.xserver.displayManager.sddm.theme = "catppuccin_sddm";


  programs.hyprland.enable = true;
  programs.hyprland.xwayland.enable = true;
  programs.dconf.enable = true;
  # Optional, hint electron apps to use wayland:
  # environment.sessionVariables.NIXOS_OZONE_WL = "1";

  programs.waybar.enable = true;
 
  security.polkit.enable = true;

environment.systemPackages = with pkgs; [
  hyprland
  hyprpaper
  hyprwall
  waybar 
  dolphin 
  xdg-desktop-portal-hyprland
  where-is-my-sddm-theme
  catppuccin-sddm
];

fonts.packages = with pkgs; [
  noto-fonts
  noto-fonts-cjk-sans
  noto-fonts-emoji
  liberation_ttf
  fira-code
  fira-code-symbols
  mplus-outline-fonts.githubRelease
  dina-font
  proggyfonts
  nerdfonts
];
    
}
