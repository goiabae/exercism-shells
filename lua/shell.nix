{ pkgs ? import <nixpkgs> {} }:
with pkgs; mkShell {
  packages = [
    lua5_2
    sumneko-lua-language-server
    stylua
    lua52Packages.busted
  ];
}
