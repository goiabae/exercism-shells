{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  buildInputs = with pkgs; [
    (perl.withPackages (ps: [
      ps.Test2Suite
      ps.PLS
    ]))
  ];
}
