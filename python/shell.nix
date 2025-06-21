{ pkgs ? import <nixpkgs> {} }:
pkgs.mkShell {
  buildInputs = with pkgs; [
    (python3.withPackages (ps: [ps.pytest]))
    python3Packages.python-lsp-server
    python3Packages.python-lsp-ruff
    python3Packages.pylsp-mypy
  ];
}
