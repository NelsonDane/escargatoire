{
  description = "Nix Flake for K8s Development";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils, ...}:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = import nixpkgs { inherit system; };
      in
      rec {
        devShells.default = pkgs.mkShellNoCC {
          packages = with pkgs; [
            fluxcd
            k9s
            kubectl
            kube-linter
            sops
            talosctl
          ];
        };
      }
    );
}
