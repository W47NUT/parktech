{
  pkgs,
  ...
}:

let
  inherit (pkgs) mkShellNoCC;
in
mkShellNoCC {
  packages = with pkgs; [
    nodejs
    pnpm
  ];
}
