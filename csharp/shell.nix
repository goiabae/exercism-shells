{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  buildInputs = with pkgs; [
    omnisharp-roslyn
    dotnet-sdk_9
  ];
}
