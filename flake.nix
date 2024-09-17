{
  description = "Coenicorn nixos config";
  
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  }; 

  outputs = { self, nixpkgs, ... }: {
    nixosConfigurations = {
      coenicorn-nix-laptop = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        modules = [ ./configuration.nix ];
     };
    };
  };
}
