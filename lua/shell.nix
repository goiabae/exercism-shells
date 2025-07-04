{ pkgs ? import <nixpkgs> {} }:
with pkgs; mkShell {
  packages = [
    lua5_3
    sumneko-lua-language-server
    stylua
    lua53Packages.busted
  ];
}
