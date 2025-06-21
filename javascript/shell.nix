{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  buildInputs = [
    pkgs.nodejs
    pkgs.nodePackages.pnpm
    pkgs.corepack
    pkgs.typescript-language-server
  ];
}
