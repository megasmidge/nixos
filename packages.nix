{ config, pkgs, ... }: {

  nixpkgs.config = {
    allowUnfree = true;
    permittedInsecurePackages = ["python-2.7.18.8" "electron-25.9.0"];
  };

 programs.steam.enable = true;
  
  programs.zsh = {
  enable = true;
  enableCompletion = true;
  autosuggestions.enable = true;
  syntaxHighlighting.enable = true;

  shellAliases = {
    ll = "ls -l";
    update = "sudo nixos-rebuild switch";
  };
  histSize = 10000;
  oh-my-zsh = {
    enable = true;
    plugins = [ "git" ];
    theme = "robbyrussell";
  };
};


  environment.systemPackages = with pkgs; [

    # === APPS ===
    # -- browsers --
    
vim # Do not forget to add an editor to edit configuration.nix! The Nano editor is also installed by default.
   wget
   git
   brave
   fastfetch
   cmatrix
   vscodium
   kitty
   alacritty
   obs-studio
   pavucontrol
   vmware-workstation
   unzip
   obsidian
   obs-studio
   tmux
   shotcut
   openssl
   fastfetch
   curl
   catppuccinifier-cli
   signal-desktop
   nautilus
   udiskie
];
   
}
