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
        cobol = pkgs.callPackage ./cobol/shell.nix {};
        csharp = pkgs.callPackage ./csharp/shell.nix {};
        cpp = pkgs.callPackage ./cpp/shell.nix {};
        c = pkgs.callPackage ./c/shell.nix {};
        java = pkgs.callPackage ./java/shell.nix {};
        python = pkgs.callPackage ./python/shell.nix {};
        javascript = pkgs.callPackage ./javascript/shell.nix {};
        ocaml = pkgs.callPackage ./ocaml/shell.nix {};
        zig = pkgs.callPackage ./zig/shell.nix {};
        perl5 = pkgs.callPackage ./perl5/shell.nix {};
      };
    };
}
