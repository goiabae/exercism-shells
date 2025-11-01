{ pkgs ? import <nixpkgs> {} }:
with pkgs; mkShell {
  nativeBuildInputs = [
    stdenv.cc
    clang-analyzer
    clang-tools
    cling
    cppcheck
    valgrind
    bear
    gnumake
    cmake
    gdb
  ];

  buildInputs = [ boost tbb ];

  hardeningDisable = [ "fortify" ];
}
