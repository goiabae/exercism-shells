{
  outputs = { nixpkgs, ... }:
    let pkgs = import nixpkgs { system = "x86_64-linux"; }; in
    {
      devShells.x86_64-linux = {
        kotlin = pkgs.callPackage ./kotlin/shell.nix {};
        julia = pkgs.callPackage ./julia/shell.nix {};
        nim = pkgs.callPackage ./nim/shell.nix {};
        common-lisp = pkgs.callPackage ./common-lisp/shell.nix {};
        clojure = pkgs.callPackage ./clojure/shell.nix {};
        csharp = pkgs.callPackage ./csharp/shell.nix {};
        cpp = pkgs.callPackage ./cpp/shell.nix {};
        java = pkgs.callPackage ./java/shell.nix {};
      };
    };
}
