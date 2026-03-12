{ pkgs }:

# Lean fails to compile generated C files under GCC because the Nix linker
# wrapper fails with an empty string argument. Hence the use of Clang, instead.

pkgs.mkShell.override { stdenv = pkgs.clangStdenv; } {
  packages = with pkgs; [
    lean4
  ];
}
