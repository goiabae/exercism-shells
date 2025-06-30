{ pkgs ? import <nixpkgs> {} }:
with pkgs; mkShell {
  buildInputs = [
    stdenv.cc
    gnumake
    nasm
    bear
    asm-lsp
    gdb
  ];

  hardeningDisable = [ "fortify" ];
}
