with (import <nixpkgs> {}).pkgs;
let pkg = haskellngPackages.callPackage
            ({mkDerivation, base, stdenv, transformers, mtl, containers, hakyll }:
mkDerivation {
  pname = "website";
  version = "0.1.0.0";
  src = ./.;
  buildDepends = [ base ];
  license = stdenv.lib.licenses.mit;
}) {};
in
  pkg.env
