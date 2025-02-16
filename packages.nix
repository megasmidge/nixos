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
   brave
 
   # text editor
   vim

   # scrape the net
   wget
   git
   curl   
 
   #stupid flex stuff
   fastfetch
   cmatrix
   catppuccinifier-cli
   
   # dev ide
   vscodium
   
   # shell-life
   kitty
   alacritty
   tmux

   # audio picker
   pavucontrol

   # zipped
   unzip

   # notes
   obsidian
   
   # videos
   obs-studio
   shotcut

   # comms 
   signal-desktop

   # ssl   
   openssl

   # file explorer
   nautilus
   udiskie
   xfce.thunar
];
   
}

