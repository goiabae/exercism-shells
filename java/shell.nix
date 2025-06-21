{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  packages = with pkgs; [
    openjdk
    jdt-language-server
    gradle
  ];
}
