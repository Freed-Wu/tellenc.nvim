{ pkgs ? import <nixpkgs> { } }:

with pkgs;
mkShell {
  name = "tellenc.nvim";
  buildInputs = [
    pkg-config
    stdenv.cc
    luajit
    xmake
  ];
  # https://github.com/NixOS/nixpkgs/issues/314313#issuecomment-2134252094
  shellHook = ''
    LD="$CC"
  '';
}
