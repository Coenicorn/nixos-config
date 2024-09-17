{
  description = "Coenicorn nixos config";
  
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs";
  }; 

  outputs = { self, nixpkgs, ... }: {
    nixosConfigurations = {
      hostName = "nixos" {
        system = "x86_64-linux";
        modules = [ ./configuration.nix ];
     };
    };
  };
}
