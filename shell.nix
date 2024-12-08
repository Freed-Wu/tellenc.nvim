{
  pkgs ? import <nixpkgs> { },
}:

with pkgs;
mkShell {
  name = "tellenc.nvim";
  buildInputs = [
    pkg-config
    stdenv.cc
    (luajit.withPackages (
      p: with p; [
        busted
      ]
    ))
    xmake
  ];
  # https://github.com/NixOS/nixpkgs/issues/314313#issuecomment-2134252094
  shellHook = ''
    LD="$CC"
  '';
}
