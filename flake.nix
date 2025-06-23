{
  description = "parktech";

  inputs.nixpkgs = {
    type = "github";
    owner = "NixOS";
    repo = "nixpkgs";
    ref = "nixos-24.05";
  };

  outputs =
    { self, nixpkgs, ... }:
    let
      supportedSystems = [
        "x86_64-linux"
        "x86_64-darwin"
        "aarch64-linux"
        "aarch64-darwin"
      ];

      forAllSystems = nixpkgs.lib.genAttrs supportedSystems;
    in
    {
      packages = forAllSystems (
        system:
        let
          pkgs = nixpkgs.legacyPackages.${system};
        in
        {
          default = self.packages.${system}."parktech";
          parktech = pkgs.callPackage ./derivation.nix { };
          dev = pkgs.callPackage ./dev.nix { };
        }
      );

      devShells = forAllSystems (
        system:
        let
          pkgs = nixpkgs.legacyPackages.${system};
        in
        {
          default = self.devShells.${system}."parktech";
          parktech = pkgs.callPackage ./shell.nix { inherit pkgs; };
        }
      );

      formatter = forAllSystems (
        system:
        let
          pkgs = nixpkgs.legacyPackages.${system};
        in
        pkgs.writeShellApplication {
          name = "prettier";
          runtimeInputs = with pkgs; [
            # nix
            nixfmt-rfc-style
            deadnix
            statix
            fd

            # js / svelte
            nodejs
            pnpm
          ];
          text = ''
            pnpm format

            fd '.*\.nix' . -x statix fix -- {} \;
            fd '.*\.nix' . -X deadnix -e -- {} \; -X nixfmt {} \;
          '';
        }
      );
    };
}
