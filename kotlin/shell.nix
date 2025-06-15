{ pkgs ? import <nixpkgs> {} }:
with pkgs; mkShell {
  buildInputs = [
    kotlin-language-server
    openjdk
    gradle
  ];
}
