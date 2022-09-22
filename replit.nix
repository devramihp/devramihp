{ pkgs }: { 
   environment.systemPackages = with pkgs; [ 
     # ... 
     # Add the following line 
     nixos-generate-config 
   ];
 };
  environment.systemPackages = with pkgs; [
    (callPackage ./my-package.nix { })
  ];
	deps = [ pkgs.hello ]; # this is the important part for the example below to work
        pkgs.nodejs-16_x 
        pkgs.nodePackages.typescript-language-server
        pkgs.nodePackages.yarn
        pkgs.replitPackages.jest
        pkgs.replitPackages.prettier
    };
```
Then, in your `my-package.nix` file, you can access the `deps` attribute like so:
```nix
{ stdenv, lib, fetchFromGitHub, nodejs, nodePackages, deps }:
