{ pkgs ? import <nixpkgs> {} }:
with pkgs; mkShell {
  buildInputs = [
    ocaml
    ocamlPackages.ocaml-lsp
    dune_3
    ocamlPackages.ounit2
    ocamlPackages.findlib
    ocamlPackages.base
    ocamlPackages.ocamlformat
    ocamlPackages.qcheck
    ocamlPackages.utop
    ocamlPackages.findlib
    ocamlPackages.ppx_deriving
    ocamlPackages.ppx_base
    ocamlPackages.landmarks
    ocamlPackages.landmarks-ppx
    ocamlPackages.calendar
  ];

  hardeningDisable = [ "fortify" ];
}
