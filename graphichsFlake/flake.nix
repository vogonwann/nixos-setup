{
  description = "My graphics flake";

  inputs = {
  	nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
  };
	  outputs = { self, nixpkgs }:
  let
    system = "x86_64-linux";
    pkgs = nixpkgs.legacyPackages.${system};
  in
  {
    graphics =
      pkgs.mkShell
      	{
      	  buildInputs = [
      	    pkgs.gimp
      	    pkgs.inkscape
      	    pkgs.krita
      	    pkgs.blender
      	    pkgs.darktable
      	  ];
      	  
      	  shellHook = '' 
      	    echo "Graphics flake created"
      	  '';
      	};
  };
}
