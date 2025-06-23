{ pkgs }:

pkgs.mkShell {
  packages = with pkgs; [
    zig_0_13
    zls
  ];
}
