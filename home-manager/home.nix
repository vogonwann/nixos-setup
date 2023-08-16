{ config, pkgs, ... }:

{
  nixpkgs = {
    config = {
      allowUnfree = true;
      allowUnfreePredicate = (_:true);
    };
  };
  # Imports
  imports = [
    ./apps/zsh.nix
    ./apps/micro.nix
    ./apps/vscode.nix
  ];
  # Home Manager needs a bit of information about you and the
  # paths it should manage.
  home.username = "wann";
  home.homeDirectory = "/home/wann";

  # This value determines the Home Manager release that your
  # configuration is compatible with. This helps avoid breakage
  # when a new Home Manager release introduces backwards
  # incompatible changes.
  #
  # You can update Home Manager without changing this value. See
  # the Home Manager release notes for a list of state version
  # changes in each release.
  home.stateVersion = "23.05";

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
  programs.helix.enable = true;
  #Add support for ./local/bin
  home.sessionPath = [
    "$HOME/.local/bin"
  ];
  
  home.packages = with pkgs; [
  	htop
  	glances
  	nnn
  	ranger
  	kitty
  	jetbrains.rider
  	#vscode
  	nodejs_20
#  	rustc
#  	cargo
        pkg-config
  	rustup
  	flutter37
  	telegram-desktop
  	element-desktop
  	filezilla
	tmux
	thunderbird
	google-chrome
	android-studio
        android-tools
	pmbootstrap
	jellyfin-media-player
	mpv
	neovim
	python311
	python311Packages.pip
	python311Packages.pynvim
	lazygit
	git
    gh
    helix

    ocs-url
    gruvbox-gtk-theme
    gruvbox-dark-icons-gtk
    gnomeExtensions.dash-to-panel
    gnomeExtensions.blur-my-shell
    gnomeExtensions.weather-or-not
    gnome.gnome-tweaks
    
	  inconsolata-nerdfont
    gtk4
	  # GCC Stuff
	  # library depends
    gmp gmp.dev
    isl
    libffi libffi.dev
    libmpc
    libxcrypt
    mpfr mpfr.dev
    xz xz.dev
    zlib zlib.dev

    # git checkout need flex as they are not complete release tarballs
    m4
    bison
    flex
    texinfo

    # test harness
    dejagnu
    autogen

    # valgrind annotations
    valgrind valgrind.dev

    # toolchain itself
    gcc
    stdenv.cc
    stdenv.cc.libc stdenv.cc.libc_dev
    gnumake42

    remmina

    # Hyprland
    pkgs.waybar
    pkgs.eww
    pkgs.dunst
    libnotify
    swww
    rofi-wayland

    inkscape
    gimp
    
  ];
}
